<?php
declare(strict_types=1);

// BluefinTecsUserBackoffice SDK

require_once __DIR__ . '/utility/struct/Struct.php';
require_once __DIR__ . '/core/UtilityType.php';
require_once __DIR__ . '/core/Spec.php';
require_once __DIR__ . '/core/Helpers.php';

// Load utility registration
require_once __DIR__ . '/utility/Register.php';

// Load config and features
require_once __DIR__ . '/config.php';
require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/features.php';

use Voxgig\Struct\Struct;

// Features record diagnostic state on the client as dynamic properties
// (_retry, _cache, _metrics, ...); allow them explicitly (PHP 8.2+
// deprecates implicit dynamic properties).
#[\AllowDynamicProperties]
class BluefinTecsUserBackofficeSDK
{
    public string $mode;
    public array $features;
    public ?array $options;

    private $_utility;
    private $_rootctx;

    public function __construct(array $options = [])
    {
        $this->mode = "live";
        $this->features = [];
        $this->options = null;

        $utility = new BluefinTecsUserBackofficeUtility();
        $this->_utility = $utility;

        $config = BluefinTecsUserBackofficeConfig::make_config();

        $this->_rootctx = ($utility->make_context)([
            "client" => $this,
            "utility" => $utility,
            "config" => $config,
            "options" => $options ?? [],
            "shared" => [],
        ], null);

        $this->options = ($utility->make_options)($this->_rootctx);

        if (Struct::getpath($this->options, "feature.test.active") === true) {
            $this->mode = "test";
        }

        $this->_rootctx->options = $this->options;

        // Add features in the resolved order (make_options puts an explicit
        // list order first, else defaults to test-first). Ordering matters: the
        // `test` feature installs the base mock transport and the transport
        // features (retry/cache/netsim/proxy/ratelimit) wrap whatever is
        // current, so `test` must be added before them to sit at the base.
        $feature_opts = BluefinTecsUserBackofficeHelpers::to_map(Struct::getprop($this->options, "feature"));
        if ($feature_opts) {
            $featureorder = Struct::getpath($this->options, "__derived__.featureorder");
            if (is_array($featureorder)) {
                foreach ($featureorder as $fname) {
                    $fopts = BluefinTecsUserBackofficeHelpers::to_map($feature_opts[$fname] ?? null);
                    if ($fopts && isset($fopts["active"]) && $fopts["active"] === true) {
                        ($utility->feature_add)($this->_rootctx, BluefinTecsUserBackofficeFeatures::make_feature($fname));
                    }
                }
            }
        }

        // Add extension features.
        $extend_val = Struct::getprop($this->options, "extend");
        if (is_array($extend_val)) {
            foreach ($extend_val as $f) {
                if (is_object($f) && method_exists($f, 'get_name')) {
                    ($utility->feature_add)($this->_rootctx, $f);
                }
            }
        }

        // Initialize features.
        foreach ($this->features as $f) {
            ($utility->feature_init)($this->_rootctx, $f);
        }

        ($utility->feature_hook)($this->_rootctx, "PostConstruct");
    }

    public function options_map(): array
    {
        $out = Struct::clone($this->options);
        return is_array($out) ? $out : [];
    }

    public function get_utility()
    {
        return BluefinTecsUserBackofficeUtility::copy($this->_utility);
    }

    public function get_root_ctx()
    {
        return $this->_rootctx;
    }

    public function prepare(array $fetchargs = []): mixed
    {
        $utility = $this->_utility;
        $fetchargs = $fetchargs ?? [];

        $ctrl = BluefinTecsUserBackofficeHelpers::to_map(Struct::getprop($fetchargs, "ctrl")) ?? [];

        $ctx = ($utility->make_context)([
            "opname" => "prepare",
            "ctrl" => $ctrl,
        ], $this->_rootctx);

        $opts = $this->options;
        $path = Struct::getprop($fetchargs, "path") ?? "";
        $path = is_string($path) ? $path : "";
        $method_val = Struct::getprop($fetchargs, "method") ?? "GET";
        $method_val = is_string($method_val) ? $method_val : "GET";
        $params = BluefinTecsUserBackofficeHelpers::to_map(Struct::getprop($fetchargs, "params")) ?? [];
        $query = BluefinTecsUserBackofficeHelpers::to_map(Struct::getprop($fetchargs, "query")) ?? [];
        $headers = ($utility->prepare_headers)($ctx);

        $base = Struct::getprop($opts, "base") ?? "";
        $base = is_string($base) ? $base : "";
        $prefix = Struct::getprop($opts, "prefix") ?? "";
        $prefix = is_string($prefix) ? $prefix : "";
        $suffix = Struct::getprop($opts, "suffix") ?? "";
        $suffix = is_string($suffix) ? $suffix : "";

        $ctx->spec = new BluefinTecsUserBackofficeSpec([
            "base" => $base, "prefix" => $prefix, "suffix" => $suffix,
            "path" => $path, "method" => $method_val,
            "params" => $params, "query" => $query, "headers" => $headers,
            "body" => Struct::getprop($fetchargs, "body"),
            "step" => "start",
        ]);

        // Merge user-provided headers.
        $uh = Struct::getprop($fetchargs, "headers");
        if (is_array($uh)) {
            foreach ($uh as $k => $v) {
                $ctx->spec->headers[$k] = $v;
            }
        }

        [$_, $err] = ($utility->prepare_auth)($ctx);
        if ($err) {
            return ($utility->make_error)($ctx, $err);
        }

        [$fetchdef, $fd_err] = ($utility->make_fetch_def)($ctx);
        if ($fd_err) {
            return ($utility->make_error)($ctx, $fd_err);
        }
        return $fetchdef;
    }

    public function direct(array $fetchargs = []): mixed
    {
        $utility = $this->_utility;

        // direct() is the raw-HTTP escape hatch: it never throws, it returns
        // an {ok, err, ...} dict. prepare() now raises on error, so catch it
        // and surface the failure through the dict instead.
        try {
            $fetchdef = $this->prepare($fetchargs);
        } catch (\Throwable $err) {
            return ["ok" => false, "err" => $err];
        }

        $fetchargs = $fetchargs ?? [];
        $ctrl = BluefinTecsUserBackofficeHelpers::to_map(Struct::getprop($fetchargs, "ctrl")) ?? [];

        $ctx = ($utility->make_context)([
            "opname" => "direct",
            "ctrl" => $ctrl,
        ], $this->_rootctx);

        $url = $fetchdef["url"] ?? "";
        [$fetched, $fetch_err] = ($utility->fetcher)($ctx, $url, $fetchdef);

        if ($fetch_err) {
            return ["ok" => false, "err" => $fetch_err];
        }

        if ($fetched === null) {
            return [
                "ok" => false,
                "err" => $ctx->make_error("direct_no_response", "response: undefined"),
            ];
        }

        if (is_array($fetched)) {
            $status = BluefinTecsUserBackofficeHelpers::to_int(Struct::getprop($fetched, "status"));
            $headers = Struct::getprop($fetched, "headers") ?? [];

            // No-body responses (204, 304) and explicit zero content-length
            // must skip JSON parsing — calling json() on an empty body errors.
            $content_length = is_array($headers) ? ($headers["content-length"] ?? null) : null;
            $no_body = $status === 204 || $status === 304 || (string)$content_length === "0";

            $json_data = null;
            if (!$no_body) {
                $jf = Struct::getprop($fetched, "json");
                if (is_callable($jf)) {
                    try {
                        $json_data = $jf();
                    } catch (\Throwable $e) {
                        // Non-JSON body — leave data null but keep status/ok.
                        $json_data = null;
                    }
                }
            }

            return [
                "ok" => $status >= 200 && $status < 300,
                "status" => $status,
                "headers" => Struct::getprop($fetched, "headers"),
                "data" => $json_data,
            ];
        }

        return [
            "ok" => false,
            "err" => $ctx->make_error("direct_invalid", "invalid response type"),
        ];
    }


    private $_output_activate_digital_module = null;

    // Canonical facade: $client->OutputActivateDigitalModule()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_activate_digital_module()
    // resolves here too.
    public function OutputActivateDigitalModule($data = null)
    {
        require_once __DIR__ . '/entity/output_activate_digital_module_entity.php';
        if ($data === null) {
            if ($this->_output_activate_digital_module === null) {
                $this->_output_activate_digital_module = new OutputActivateDigitalModuleEntity($this, null);
            }
            return $this->_output_activate_digital_module;
        }
        return new OutputActivateDigitalModuleEntity($this, $data);
    }


    private $_output_activate_portal_module = null;

    // Canonical facade: $client->OutputActivatePortalModule()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_activate_portal_module()
    // resolves here too.
    public function OutputActivatePortalModule($data = null)
    {
        require_once __DIR__ . '/entity/output_activate_portal_module_entity.php';
        if ($data === null) {
            if ($this->_output_activate_portal_module === null) {
                $this->_output_activate_portal_module = new OutputActivatePortalModuleEntity($this, null);
            }
            return $this->_output_activate_portal_module;
        }
        return new OutputActivatePortalModuleEntity($this, $data);
    }


    private $_output_activate_store_module = null;

    // Canonical facade: $client->OutputActivateStoreModule()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_activate_store_module()
    // resolves here too.
    public function OutputActivateStoreModule($data = null)
    {
        require_once __DIR__ . '/entity/output_activate_store_module_entity.php';
        if ($data === null) {
            if ($this->_output_activate_store_module === null) {
                $this->_output_activate_store_module = new OutputActivateStoreModuleEntity($this, null);
            }
            return $this->_output_activate_store_module;
        }
        return new OutputActivateStoreModuleEntity($this, $data);
    }


    private $_output_activate_user = null;

    // Canonical facade: $client->OutputActivateUser()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_activate_user()
    // resolves here too.
    public function OutputActivateUser($data = null)
    {
        require_once __DIR__ . '/entity/output_activate_user_entity.php';
        if ($data === null) {
            if ($this->_output_activate_user === null) {
                $this->_output_activate_user = new OutputActivateUserEntity($this, null);
            }
            return $this->_output_activate_user;
        }
        return new OutputActivateUserEntity($this, $data);
    }


    private $_output_assign_role = null;

    // Canonical facade: $client->OutputAssignRole()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_assign_role()
    // resolves here too.
    public function OutputAssignRole($data = null)
    {
        require_once __DIR__ . '/entity/output_assign_role_entity.php';
        if ($data === null) {
            if ($this->_output_assign_role === null) {
                $this->_output_assign_role = new OutputAssignRoleEntity($this, null);
            }
            return $this->_output_assign_role;
        }
        return new OutputAssignRoleEntity($this, $data);
    }


    private $_output_change_logo = null;

    // Canonical facade: $client->OutputChangeLogo()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_change_logo()
    // resolves here too.
    public function OutputChangeLogo($data = null)
    {
        require_once __DIR__ . '/entity/output_change_logo_entity.php';
        if ($data === null) {
            if ($this->_output_change_logo === null) {
                $this->_output_change_logo = new OutputChangeLogoEntity($this, null);
            }
            return $this->_output_change_logo;
        }
        return new OutputChangeLogoEntity($this, $data);
    }


    private $_output_create_mandator = null;

    // Canonical facade: $client->OutputCreateMandator()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_create_mandator()
    // resolves here too.
    public function OutputCreateMandator($data = null)
    {
        require_once __DIR__ . '/entity/output_create_mandator_entity.php';
        if ($data === null) {
            if ($this->_output_create_mandator === null) {
                $this->_output_create_mandator = new OutputCreateMandatorEntity($this, null);
            }
            return $this->_output_create_mandator;
        }
        return new OutputCreateMandatorEntity($this, $data);
    }


    private $_output_create_service_user = null;

    // Canonical facade: $client->OutputCreateServiceUser()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_create_service_user()
    // resolves here too.
    public function OutputCreateServiceUser($data = null)
    {
        require_once __DIR__ . '/entity/output_create_service_user_entity.php';
        if ($data === null) {
            if ($this->_output_create_service_user === null) {
                $this->_output_create_service_user = new OutputCreateServiceUserEntity($this, null);
            }
            return $this->_output_create_service_user;
        }
        return new OutputCreateServiceUserEntity($this, $data);
    }


    private $_output_deactivate_user = null;

    // Canonical facade: $client->OutputDeactivateUser()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_deactivate_user()
    // resolves here too.
    public function OutputDeactivateUser($data = null)
    {
        require_once __DIR__ . '/entity/output_deactivate_user_entity.php';
        if ($data === null) {
            if ($this->_output_deactivate_user === null) {
                $this->_output_deactivate_user = new OutputDeactivateUserEntity($this, null);
            }
            return $this->_output_deactivate_user;
        }
        return new OutputDeactivateUserEntity($this, $data);
    }


    private $_output_get_kyc_document = null;

    // Canonical facade: $client->OutputGetKycDocument()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_get_kyc_document()
    // resolves here too.
    public function OutputGetKycDocument($data = null)
    {
        require_once __DIR__ . '/entity/output_get_kyc_document_entity.php';
        if ($data === null) {
            if ($this->_output_get_kyc_document === null) {
                $this->_output_get_kyc_document = new OutputGetKycDocumentEntity($this, null);
            }
            return $this->_output_get_kyc_document;
        }
        return new OutputGetKycDocumentEntity($this, $data);
    }


    private $_output_get_logo = null;

    // Canonical facade: $client->OutputGetLogo()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_get_logo()
    // resolves here too.
    public function OutputGetLogo($data = null)
    {
        require_once __DIR__ . '/entity/output_get_logo_entity.php';
        if ($data === null) {
            if ($this->_output_get_logo === null) {
                $this->_output_get_logo = new OutputGetLogoEntity($this, null);
            }
            return $this->_output_get_logo;
        }
        return new OutputGetLogoEntity($this, $data);
    }


    private $_output_list_of_available_role = null;

    // Canonical facade: $client->OutputListOfAvailableRole()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_list_of_available_role()
    // resolves here too.
    public function OutputListOfAvailableRole($data = null)
    {
        require_once __DIR__ . '/entity/output_list_of_available_role_entity.php';
        if ($data === null) {
            if ($this->_output_list_of_available_role === null) {
                $this->_output_list_of_available_role = new OutputListOfAvailableRoleEntity($this, null);
            }
            return $this->_output_list_of_available_role;
        }
        return new OutputListOfAvailableRoleEntity($this, $data);
    }


    private $_output_list_of_mandator = null;

    // Canonical facade: $client->OutputListOfMandator()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_list_of_mandator()
    // resolves here too.
    public function OutputListOfMandator($data = null)
    {
        require_once __DIR__ . '/entity/output_list_of_mandator_entity.php';
        if ($data === null) {
            if ($this->_output_list_of_mandator === null) {
                $this->_output_list_of_mandator = new OutputListOfMandatorEntity($this, null);
            }
            return $this->_output_list_of_mandator;
        }
        return new OutputListOfMandatorEntity($this, $data);
    }


    private $_output_list_of_module = null;

    // Canonical facade: $client->OutputListOfModule()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_list_of_module()
    // resolves here too.
    public function OutputListOfModule($data = null)
    {
        require_once __DIR__ . '/entity/output_list_of_module_entity.php';
        if ($data === null) {
            if ($this->_output_list_of_module === null) {
                $this->_output_list_of_module = new OutputListOfModuleEntity($this, null);
            }
            return $this->_output_list_of_module;
        }
        return new OutputListOfModuleEntity($this, $data);
    }


    private $_output_list_of_role_group = null;

    // Canonical facade: $client->OutputListOfRoleGroup()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_list_of_role_group()
    // resolves here too.
    public function OutputListOfRoleGroup($data = null)
    {
        require_once __DIR__ . '/entity/output_list_of_role_group_entity.php';
        if ($data === null) {
            if ($this->_output_list_of_role_group === null) {
                $this->_output_list_of_role_group = new OutputListOfRoleGroupEntity($this, null);
            }
            return $this->_output_list_of_role_group;
        }
        return new OutputListOfRoleGroupEntity($this, $data);
    }


    private $_output_list_of_transactions_history = null;

    // Canonical facade: $client->OutputListOfTransactionsHistory()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_list_of_transactions_history()
    // resolves here too.
    public function OutputListOfTransactionsHistory($data = null)
    {
        require_once __DIR__ . '/entity/output_list_of_transactions_history_entity.php';
        if ($data === null) {
            if ($this->_output_list_of_transactions_history === null) {
                $this->_output_list_of_transactions_history = new OutputListOfTransactionsHistoryEntity($this, null);
            }
            return $this->_output_list_of_transactions_history;
        }
        return new OutputListOfTransactionsHistoryEntity($this, $data);
    }


    private $_output_list_of_user = null;

    // Canonical facade: $client->OutputListOfUser()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_list_of_user()
    // resolves here too.
    public function OutputListOfUser($data = null)
    {
        require_once __DIR__ . '/entity/output_list_of_user_entity.php';
        if ($data === null) {
            if ($this->_output_list_of_user === null) {
                $this->_output_list_of_user = new OutputListOfUserEntity($this, null);
            }
            return $this->_output_list_of_user;
        }
        return new OutputListOfUserEntity($this, $data);
    }


    private $_output_provide_credential = null;

    // Canonical facade: $client->OutputProvideCredential()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_provide_credential()
    // resolves here too.
    public function OutputProvideCredential($data = null)
    {
        require_once __DIR__ . '/entity/output_provide_credential_entity.php';
        if ($data === null) {
            if ($this->_output_provide_credential === null) {
                $this->_output_provide_credential = new OutputProvideCredentialEntity($this, null);
            }
            return $this->_output_provide_credential;
        }
        return new OutputProvideCredentialEntity($this, $data);
    }


    private $_output_register_user = null;

    // Canonical facade: $client->OutputRegisterUser()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_register_user()
    // resolves here too.
    public function OutputRegisterUser($data = null)
    {
        require_once __DIR__ . '/entity/output_register_user_entity.php';
        if ($data === null) {
            if ($this->_output_register_user === null) {
                $this->_output_register_user = new OutputRegisterUserEntity($this, null);
            }
            return $this->_output_register_user;
        }
        return new OutputRegisterUserEntity($this, $data);
    }


    private $_output_remove_role = null;

    // Canonical facade: $client->OutputRemoveRole()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_remove_role()
    // resolves here too.
    public function OutputRemoveRole($data = null)
    {
        require_once __DIR__ . '/entity/output_remove_role_entity.php';
        if ($data === null) {
            if ($this->_output_remove_role === null) {
                $this->_output_remove_role = new OutputRemoveRoleEntity($this, null);
            }
            return $this->_output_remove_role;
        }
        return new OutputRemoveRoleEntity($this, $data);
    }


    private $_output_resend_link = null;

    // Canonical facade: $client->OutputResendLink()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_resend_link()
    // resolves here too.
    public function OutputResendLink($data = null)
    {
        require_once __DIR__ . '/entity/output_resend_link_entity.php';
        if ($data === null) {
            if ($this->_output_resend_link === null) {
                $this->_output_resend_link = new OutputResendLinkEntity($this, null);
            }
            return $this->_output_resend_link;
        }
        return new OutputResendLinkEntity($this, $data);
    }


    private $_output_reset_password = null;

    // Canonical facade: $client->OutputResetPassword()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_reset_password()
    // resolves here too.
    public function OutputResetPassword($data = null)
    {
        require_once __DIR__ . '/entity/output_reset_password_entity.php';
        if ($data === null) {
            if ($this->_output_reset_password === null) {
                $this->_output_reset_password = new OutputResetPasswordEntity($this, null);
            }
            return $this->_output_reset_password;
        }
        return new OutputResetPasswordEntity($this, $data);
    }


    private $_output_update_consumer = null;

    // Canonical facade: $client->OutputUpdateConsumer()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_update_consumer()
    // resolves here too.
    public function OutputUpdateConsumer($data = null)
    {
        require_once __DIR__ . '/entity/output_update_consumer_entity.php';
        if ($data === null) {
            if ($this->_output_update_consumer === null) {
                $this->_output_update_consumer = new OutputUpdateConsumerEntity($this, null);
            }
            return $this->_output_update_consumer;
        }
        return new OutputUpdateConsumerEntity($this, $data);
    }


    private $_output_update_profile = null;

    // Canonical facade: $client->OutputUpdateProfile()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->output_update_profile()
    // resolves here too.
    public function OutputUpdateProfile($data = null)
    {
        require_once __DIR__ . '/entity/output_update_profile_entity.php';
        if ($data === null) {
            if ($this->_output_update_profile === null) {
                $this->_output_update_profile = new OutputUpdateProfileEntity($this, null);
            }
            return $this->_output_update_profile;
        }
        return new OutputUpdateProfileEntity($this, $data);
    }


    private $_version = null;

    // Canonical facade: $client->Version()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->version()
    // resolves here too.
    public function Version($data = null)
    {
        require_once __DIR__ . '/entity/version_entity.php';
        if ($data === null) {
            if ($this->_version === null) {
                $this->_version = new VersionEntity($this, null);
            }
            return $this->_version;
        }
        return new VersionEntity($this, $data);
    }



    public static function test(?array $testopts = null, ?array $sdkopts = null): self
    {
        $sdkopts = $sdkopts ?? [];
        $sdkopts = Struct::clone($sdkopts);
        $sdkopts = is_array($sdkopts) ? $sdkopts : [];

        $testopts = $testopts ?? [];
        $testopts = Struct::clone($testopts);
        $testopts = is_array($testopts) ? $testopts : [];
        $testopts["active"] = true;

        if (!isset($sdkopts["feature"])) {
            $sdkopts["feature"] = [];
        }
        $sdkopts["feature"]["test"] = $testopts;

        $sdk = new BluefinTecsUserBackofficeSDK($sdkopts);
        $sdk->mode = "test";
        return $sdk;
    }
}
