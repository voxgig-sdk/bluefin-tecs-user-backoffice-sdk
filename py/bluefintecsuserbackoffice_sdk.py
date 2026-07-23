# BluefinTecsUserBackoffice SDK

from utility.voxgig_struct import voxgig_struct as vs
from core.utility_type import BluefinTecsUserBackofficeUtility
from core.spec import BluefinTecsUserBackofficeSpec
from core import helpers

# Load utility registration (populates Utility._registrar)
from utility import register

# Load features
from feature.base_feature import BluefinTecsUserBackofficeBaseFeature
from features import _make_feature


class BluefinTecsUserBackofficeSDK:

    def __init__(self, options=None):
        self.mode = "live"
        self.features = []
        self.options = None

        utility = BluefinTecsUserBackofficeUtility()
        self._utility = utility

        from config import make_config
        config = make_config()

        self._rootctx = utility.make_context({
            "client": self,
            "utility": utility,
            "config": config,
            "options": options if options is not None else {},
            "shared": {},
        }, None)

        self.options = utility.make_options(self._rootctx)

        if vs.getpath(self.options, "feature.test.active") is True:
            self.mode = "test"

        self._rootctx.options = self.options

        # Add features in the resolved order (make_options puts an explicit
        # list order first, else defaults to test-first). Ordering matters: the
        # `test` feature installs the base mock transport and the transport
        # features (retry/cache/netsim/proxy/ratelimit) wrap whatever is
        # current, so `test` must be added before them to sit at the base.
        feature_opts = helpers.to_map(vs.getprop(self.options, "feature"))
        if feature_opts is not None:
            featureorder = vs.getpath(self.options, "__derived__.featureorder")
            if isinstance(featureorder, list):
                for fname in featureorder:
                    fopts = helpers.to_map(feature_opts.get(fname))
                    if fopts is not None and fopts.get("active") is True:
                        utility.feature_add(self._rootctx, _make_feature(fname))

        # Add extension features.
        extend = vs.getprop(self.options, "extend")
        if isinstance(extend, list):
            for f in extend:
                if isinstance(f, dict) or (hasattr(f, "get_name") and callable(f.get_name)):
                    utility.feature_add(self._rootctx, f)

        # Initialize features.
        for f in self.features:
            utility.feature_init(self._rootctx, f)

        utility.feature_hook(self._rootctx, "PostConstruct")

        # #BuildFeatures

    def options_map(self):
        out = vs.clone(self.options)
        if isinstance(out, dict):
            return out
        return {}

    def get_utility(self):
        return BluefinTecsUserBackofficeUtility.copy(self._utility)

    def get_root_ctx(self):
        return self._rootctx

    def prepare(self, fetchargs=None):
        utility = self._utility

        if fetchargs is None:
            fetchargs = {}

        ctrl = helpers.to_map(vs.getprop(fetchargs, "ctrl"))
        if ctrl is None:
            ctrl = {}

        ctx = utility.make_context({
            "opname": "prepare",
            "ctrl": ctrl,
        }, self._rootctx)

        options = self.options

        path = vs.getprop(fetchargs, "path") or ""
        if not isinstance(path, str):
            path = ""

        method = vs.getprop(fetchargs, "method") or "GET"
        if not isinstance(method, str):
            method = "GET"

        params = helpers.to_map(vs.getprop(fetchargs, "params"))
        if params is None:
            params = {}
        query = helpers.to_map(vs.getprop(fetchargs, "query"))
        if query is None:
            query = {}

        headers = utility.prepare_headers(ctx)

        base = vs.getprop(options, "base") or ""
        if not isinstance(base, str):
            base = ""
        prefix = vs.getprop(options, "prefix") or ""
        if not isinstance(prefix, str):
            prefix = ""
        suffix = vs.getprop(options, "suffix") or ""
        if not isinstance(suffix, str):
            suffix = ""

        ctx.spec = BluefinTecsUserBackofficeSpec({
            "base": base,
            "prefix": prefix,
            "suffix": suffix,
            "path": path,
            "method": method,
            "params": params,
            "query": query,
            "headers": headers,
            "body": vs.getprop(fetchargs, "body"),
            "step": "start",
        })

        # Merge user-provided headers.
        uh = vs.getprop(fetchargs, "headers")
        if isinstance(uh, dict):
            for k, v in uh.items():
                ctx.spec.headers[k] = v

        _, err = utility.prepare_auth(ctx)
        if err is not None:
            raise err

        fetchdef, err = utility.make_fetch_def(ctx)
        if err is not None:
            raise err

        return fetchdef

    def direct(self, fetchargs=None):
        utility = self._utility

        try:
            fetchdef = self.prepare(fetchargs)
        except Exception as err:
            # direct() is the raw-HTTP escape hatch: it never raises, it
            # returns a result object callers branch on via result["ok"].
            return {"ok": False, "err": err}

        if fetchargs is None:
            fetchargs = {}
        ctrl = helpers.to_map(vs.getprop(fetchargs, "ctrl"))
        if ctrl is None:
            ctrl = {}

        ctx = utility.make_context({
            "opname": "direct",
            "ctrl": ctrl,
        }, self._rootctx)

        url = fetchdef.get("url", "")
        fetched, fetch_err = utility.fetcher(ctx, url, fetchdef)

        if fetch_err is not None:
            return {"ok": False, "err": fetch_err}

        if fetched is None:
            return {
                "ok": False,
                "err": ctx.make_error("direct_no_response", "response: undefined"),
            }

        if isinstance(fetched, dict):
            status = helpers.to_int(vs.getprop(fetched, "status"))
            headers = vs.getprop(fetched, "headers") or {}

            # No-body responses (204, 304) and explicit zero content-length
            # must skip JSON parsing — calling json() on an empty body raises.
            content_length = None
            if isinstance(headers, dict):
                content_length = headers.get("content-length")
            no_body = status in (204, 304) or str(content_length) == "0"

            json_data = None
            if not no_body:
                jf = vs.getprop(fetched, "json")
                if callable(jf):
                    try:
                        json_data = jf()
                    except Exception:
                        # Non-JSON body (e.g. text/plain, text/html). Surface
                        # status + headers but leave data as None.
                        json_data = None

            return {
                "ok": status >= 200 and status < 300,
                "status": status,
                "headers": headers,
                "data": json_data,
            }

        return {
            "ok": False,
            "err": ctx.make_error("direct_invalid", "invalid response type"),
        }


    def OutputActivateDigitalModule(self, data=None) -> "OutputActivateDigitalModuleEntity":
        """Entity factory: client.OutputActivateDigitalModule().list() / client.OutputActivateDigitalModule().load({"id": ...})."""
        from entity.output_activate_digital_module_entity import OutputActivateDigitalModuleEntity
        return OutputActivateDigitalModuleEntity(self, data)


    def OutputActivatePortalModule(self, data=None) -> "OutputActivatePortalModuleEntity":
        """Entity factory: client.OutputActivatePortalModule().list() / client.OutputActivatePortalModule().load({"id": ...})."""
        from entity.output_activate_portal_module_entity import OutputActivatePortalModuleEntity
        return OutputActivatePortalModuleEntity(self, data)


    def OutputActivateStoreModule(self, data=None) -> "OutputActivateStoreModuleEntity":
        """Entity factory: client.OutputActivateStoreModule().list() / client.OutputActivateStoreModule().load({"id": ...})."""
        from entity.output_activate_store_module_entity import OutputActivateStoreModuleEntity
        return OutputActivateStoreModuleEntity(self, data)


    def OutputActivateUser(self, data=None) -> "OutputActivateUserEntity":
        """Entity factory: client.OutputActivateUser().list() / client.OutputActivateUser().load({"id": ...})."""
        from entity.output_activate_user_entity import OutputActivateUserEntity
        return OutputActivateUserEntity(self, data)


    def OutputAssignRole(self, data=None) -> "OutputAssignRoleEntity":
        """Entity factory: client.OutputAssignRole().list() / client.OutputAssignRole().load({"id": ...})."""
        from entity.output_assign_role_entity import OutputAssignRoleEntity
        return OutputAssignRoleEntity(self, data)


    def OutputChangeLogo(self, data=None) -> "OutputChangeLogoEntity":
        """Entity factory: client.OutputChangeLogo().list() / client.OutputChangeLogo().load({"id": ...})."""
        from entity.output_change_logo_entity import OutputChangeLogoEntity
        return OutputChangeLogoEntity(self, data)


    def OutputCreateMandator(self, data=None) -> "OutputCreateMandatorEntity":
        """Entity factory: client.OutputCreateMandator().list() / client.OutputCreateMandator().load({"id": ...})."""
        from entity.output_create_mandator_entity import OutputCreateMandatorEntity
        return OutputCreateMandatorEntity(self, data)


    def OutputCreateServiceUser(self, data=None) -> "OutputCreateServiceUserEntity":
        """Entity factory: client.OutputCreateServiceUser().list() / client.OutputCreateServiceUser().load({"id": ...})."""
        from entity.output_create_service_user_entity import OutputCreateServiceUserEntity
        return OutputCreateServiceUserEntity(self, data)


    def OutputDeactivateUser(self, data=None) -> "OutputDeactivateUserEntity":
        """Entity factory: client.OutputDeactivateUser().list() / client.OutputDeactivateUser().load({"id": ...})."""
        from entity.output_deactivate_user_entity import OutputDeactivateUserEntity
        return OutputDeactivateUserEntity(self, data)


    def OutputGetKycDocument(self, data=None) -> "OutputGetKycDocumentEntity":
        """Entity factory: client.OutputGetKycDocument().list() / client.OutputGetKycDocument().load({"id": ...})."""
        from entity.output_get_kyc_document_entity import OutputGetKycDocumentEntity
        return OutputGetKycDocumentEntity(self, data)


    def OutputGetLogo(self, data=None) -> "OutputGetLogoEntity":
        """Entity factory: client.OutputGetLogo().list() / client.OutputGetLogo().load({"id": ...})."""
        from entity.output_get_logo_entity import OutputGetLogoEntity
        return OutputGetLogoEntity(self, data)


    def OutputListOfAvailableRole(self, data=None) -> "OutputListOfAvailableRoleEntity":
        """Entity factory: client.OutputListOfAvailableRole().list() / client.OutputListOfAvailableRole().load({"id": ...})."""
        from entity.output_list_of_available_role_entity import OutputListOfAvailableRoleEntity
        return OutputListOfAvailableRoleEntity(self, data)


    def OutputListOfMandator(self, data=None) -> "OutputListOfMandatorEntity":
        """Entity factory: client.OutputListOfMandator().list() / client.OutputListOfMandator().load({"id": ...})."""
        from entity.output_list_of_mandator_entity import OutputListOfMandatorEntity
        return OutputListOfMandatorEntity(self, data)


    def OutputListOfModule(self, data=None) -> "OutputListOfModuleEntity":
        """Entity factory: client.OutputListOfModule().list() / client.OutputListOfModule().load({"id": ...})."""
        from entity.output_list_of_module_entity import OutputListOfModuleEntity
        return OutputListOfModuleEntity(self, data)


    def OutputListOfRoleGroup(self, data=None) -> "OutputListOfRoleGroupEntity":
        """Entity factory: client.OutputListOfRoleGroup().list() / client.OutputListOfRoleGroup().load({"id": ...})."""
        from entity.output_list_of_role_group_entity import OutputListOfRoleGroupEntity
        return OutputListOfRoleGroupEntity(self, data)


    def OutputListOfTransactionsHistory(self, data=None) -> "OutputListOfTransactionsHistoryEntity":
        """Entity factory: client.OutputListOfTransactionsHistory().list() / client.OutputListOfTransactionsHistory().load({"id": ...})."""
        from entity.output_list_of_transactions_history_entity import OutputListOfTransactionsHistoryEntity
        return OutputListOfTransactionsHistoryEntity(self, data)


    def OutputListOfUser(self, data=None) -> "OutputListOfUserEntity":
        """Entity factory: client.OutputListOfUser().list() / client.OutputListOfUser().load({"id": ...})."""
        from entity.output_list_of_user_entity import OutputListOfUserEntity
        return OutputListOfUserEntity(self, data)


    def OutputProvideCredential(self, data=None) -> "OutputProvideCredentialEntity":
        """Entity factory: client.OutputProvideCredential().list() / client.OutputProvideCredential().load({"id": ...})."""
        from entity.output_provide_credential_entity import OutputProvideCredentialEntity
        return OutputProvideCredentialEntity(self, data)


    def OutputRegisterUser(self, data=None) -> "OutputRegisterUserEntity":
        """Entity factory: client.OutputRegisterUser().list() / client.OutputRegisterUser().load({"id": ...})."""
        from entity.output_register_user_entity import OutputRegisterUserEntity
        return OutputRegisterUserEntity(self, data)


    def OutputRemoveRole(self, data=None) -> "OutputRemoveRoleEntity":
        """Entity factory: client.OutputRemoveRole().list() / client.OutputRemoveRole().load({"id": ...})."""
        from entity.output_remove_role_entity import OutputRemoveRoleEntity
        return OutputRemoveRoleEntity(self, data)


    def OutputResendLink(self, data=None) -> "OutputResendLinkEntity":
        """Entity factory: client.OutputResendLink().list() / client.OutputResendLink().load({"id": ...})."""
        from entity.output_resend_link_entity import OutputResendLinkEntity
        return OutputResendLinkEntity(self, data)


    def OutputResetPassword(self, data=None) -> "OutputResetPasswordEntity":
        """Entity factory: client.OutputResetPassword().list() / client.OutputResetPassword().load({"id": ...})."""
        from entity.output_reset_password_entity import OutputResetPasswordEntity
        return OutputResetPasswordEntity(self, data)


    def OutputUpdateConsumer(self, data=None) -> "OutputUpdateConsumerEntity":
        """Entity factory: client.OutputUpdateConsumer().list() / client.OutputUpdateConsumer().load({"id": ...})."""
        from entity.output_update_consumer_entity import OutputUpdateConsumerEntity
        return OutputUpdateConsumerEntity(self, data)


    def OutputUpdateProfile(self, data=None) -> "OutputUpdateProfileEntity":
        """Entity factory: client.OutputUpdateProfile().list() / client.OutputUpdateProfile().load({"id": ...})."""
        from entity.output_update_profile_entity import OutputUpdateProfileEntity
        return OutputUpdateProfileEntity(self, data)


    def Version(self, data=None) -> "VersionEntity":
        """Entity factory: client.Version().list() / client.Version().load({"id": ...})."""
        from entity.version_entity import VersionEntity
        return VersionEntity(self, data)



    @classmethod
    def test(cls, testopts=None, sdkopts=None) -> "BluefinTecsUserBackofficeSDK":
        if sdkopts is None:
            sdkopts = {}
        sdkopts = vs.clone(sdkopts)
        if not isinstance(sdkopts, dict):
            sdkopts = {}

        if testopts is None:
            testopts = {}
        testopts = vs.clone(testopts)
        if not isinstance(testopts, dict):
            testopts = {}
        testopts["active"] = True

        vs.setpath(sdkopts, "feature.test", testopts)

        sdk = cls(sdkopts)
        sdk.mode = "test"

        return sdk


from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from entity.output_activate_digital_module_entity import OutputActivateDigitalModuleEntity
    from entity.output_activate_portal_module_entity import OutputActivatePortalModuleEntity
    from entity.output_activate_store_module_entity import OutputActivateStoreModuleEntity
    from entity.output_activate_user_entity import OutputActivateUserEntity
    from entity.output_assign_role_entity import OutputAssignRoleEntity
    from entity.output_change_logo_entity import OutputChangeLogoEntity
    from entity.output_create_mandator_entity import OutputCreateMandatorEntity
    from entity.output_create_service_user_entity import OutputCreateServiceUserEntity
    from entity.output_deactivate_user_entity import OutputDeactivateUserEntity
    from entity.output_get_kyc_document_entity import OutputGetKycDocumentEntity
    from entity.output_get_logo_entity import OutputGetLogoEntity
    from entity.output_list_of_available_role_entity import OutputListOfAvailableRoleEntity
    from entity.output_list_of_mandator_entity import OutputListOfMandatorEntity
    from entity.output_list_of_module_entity import OutputListOfModuleEntity
    from entity.output_list_of_role_group_entity import OutputListOfRoleGroupEntity
    from entity.output_list_of_transactions_history_entity import OutputListOfTransactionsHistoryEntity
    from entity.output_list_of_user_entity import OutputListOfUserEntity
    from entity.output_provide_credential_entity import OutputProvideCredentialEntity
    from entity.output_register_user_entity import OutputRegisterUserEntity
    from entity.output_remove_role_entity import OutputRemoveRoleEntity
    from entity.output_resend_link_entity import OutputResendLinkEntity
    from entity.output_reset_password_entity import OutputResetPasswordEntity
    from entity.output_update_consumer_entity import OutputUpdateConsumerEntity
    from entity.output_update_profile_entity import OutputUpdateProfileEntity
    from entity.version_entity import VersionEntity
