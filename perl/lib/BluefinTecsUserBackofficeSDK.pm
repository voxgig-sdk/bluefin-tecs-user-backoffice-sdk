# BluefinTecsUserBackoffice SDK

use strict;
use warnings;

use File::Basename ();
use Cwd ();
use Scalar::Util ();

package BluefinTecsUserBackofficeSDK;

our $VERSION = '0.0.1';

our $DIR;
BEGIN { $DIR = File::Basename::dirname(Cwd::abs_path(__FILE__)) }

require(Cwd::abs_path("$DIR/Voxgig/Struct.pm"));
require(Cwd::abs_path("$DIR/../core/helpers.pm"));
require(Cwd::abs_path("$DIR/../core/utility_type.pm"));
require(Cwd::abs_path("$DIR/../core/spec.pm"));
require(Cwd::abs_path("$DIR/../core/error.pm"));

# Load utility registration
require(Cwd::abs_path("$DIR/../utility/register.pm"));

# Load config and features
require(Cwd::abs_path("$DIR/../config.pm"));
require(Cwd::abs_path("$DIR/../feature/base_feature.pm"));
require(Cwd::abs_path("$DIR/../features.pm"));

sub new {
  my ($class, $options) = @_;
  $options = {} unless defined $options;

  my $self = bless {
    mode => 'live',
    features => [],
    options => undef,
  }, $class;

  my $utility = BluefinTecsUserBackofficeUtility->new;
  $self->{_utility} = $utility;

  my $config = BluefinTecsUserBackofficeConfig::make_config();

  $self->{_rootctx} = $utility->{make_context}->({
    'client' => $self,
    'utility' => $utility,
    'config' => $config,
    'options' => $options,
    'shared' => {},
  }, undef);

  $self->{options} = $utility->{make_options}->($self->{_rootctx});

  if (BluefinTecsUserBackofficeHelpers::is_true(
    BluefinTecsUserBackofficeHelpers::gpath($self->{options}, 'feature.test.active'))) {
    $self->{mode} = 'test';
  }

  $self->{_rootctx}{options} = $self->{options};

  # Add features in the resolved order (make_options records an explicit
  # array order, else defaults to test-first). Ordering matters: the `test`
  # feature installs the base mock transport and the transport features
  # (retry/cache/netsim/proxy/ratelimit) wrap whatever is current, so `test`
  # must be added before them to sit at the base of the wrapper chain.
  my $feature_opts = BluefinTecsUserBackofficeHelpers::to_map(
    BluefinTecsUserBackofficeHelpers::gp($self->{options}, 'feature')) || {};
  my $featureorder = BluefinTecsUserBackofficeHelpers::gpath(
    $self->{options}, '__derived__.featureorder');
  $featureorder = [] unless Voxgig::Struct::islist($featureorder);
  for my $fname (@$featureorder) {
    my $fopts = BluefinTecsUserBackofficeHelpers::to_map($feature_opts->{$fname});
    if ($fopts && BluefinTecsUserBackofficeHelpers::is_true($fopts->{active})) {
      $utility->{feature_add}->($self->{_rootctx},
        BluefinTecsUserBackofficeFeatures::make_feature($fname));
    }
  }

  # Add extension features.
  my $extend = BluefinTecsUserBackofficeHelpers::gp($self->{options}, 'extend');
  if (Voxgig::Struct::islist($extend)) {
    for my $f (@$extend) {
      if (Scalar::Util::blessed($f) && $f->can('get_name')) {
        $utility->{feature_add}->($self->{_rootctx}, $f);
      }
    }
  }

  # Initialize features.
  for my $f (@{ $self->{features} }) {
    $utility->{feature_init}->($self->{_rootctx}, $f);
  }

  $utility->{feature_hook}->($self->{_rootctx}, 'PostConstruct');

  return $self;
}

sub options_map {
  my ($self) = @_;
  my $out = Voxgig::Struct::clone($self->{options});
  return Voxgig::Struct::ismap($out) ? $out : {};
}

sub get_utility {
  my ($self) = @_;
  return BluefinTecsUserBackofficeUtility->copy($self->{_utility});
}

sub get_root_ctx {
  my ($self) = @_;
  return $self->{_rootctx};
}

sub prepare {
  my ($self, $fetchargs) = @_;
  my $utility = $self->{_utility};
  $fetchargs = {} unless defined $fetchargs;

  my $ctrl = BluefinTecsUserBackofficeHelpers::to_map(
    BluefinTecsUserBackofficeHelpers::gp($fetchargs, 'ctrl')) || {};

  my $ctx = $utility->{make_context}->({
    'opname' => 'prepare',
    'ctrl' => $ctrl,
  }, $self->{_rootctx});

  my $opts = $self->{options};
  my $path = BluefinTecsUserBackofficeHelpers::gp($fetchargs, 'path');
  $path = '' unless defined $path && !ref $path;
  my $method_val = BluefinTecsUserBackofficeHelpers::gp($fetchargs, 'method');
  $method_val = 'GET' unless defined $method_val && !ref $method_val;
  my $params = BluefinTecsUserBackofficeHelpers::to_map(
    BluefinTecsUserBackofficeHelpers::gp($fetchargs, 'params')) || {};
  my $query = BluefinTecsUserBackofficeHelpers::to_map(
    BluefinTecsUserBackofficeHelpers::gp($fetchargs, 'query')) || {};
  my $headers = $utility->{prepare_headers}->($ctx);

  my $base = BluefinTecsUserBackofficeHelpers::gp($opts, 'base');
  $base = '' unless defined $base && !ref $base;
  my $prefix = BluefinTecsUserBackofficeHelpers::gp($opts, 'prefix');
  $prefix = '' unless defined $prefix && !ref $prefix;
  my $suffix = BluefinTecsUserBackofficeHelpers::gp($opts, 'suffix');
  $suffix = '' unless defined $suffix && !ref $suffix;

  $ctx->{spec} = BluefinTecsUserBackofficeSpec->new({
    'base' => $base, 'prefix' => $prefix, 'suffix' => $suffix,
    'path' => $path, 'method' => $method_val,
    'params' => $params, 'query' => $query, 'headers' => $headers,
    'body' => BluefinTecsUserBackofficeHelpers::gp($fetchargs, 'body'),
    'step' => 'start',
  });

  # Merge user-provided headers.
  my $uh = BluefinTecsUserBackofficeHelpers::gp($fetchargs, 'headers');
  if (Voxgig::Struct::ismap($uh)) {
    $ctx->{spec}{headers}{$_} = $uh->{$_} for keys %$uh;
  }

  my (undef, $err) = $utility->{prepare_auth}->($ctx);
  die $err if $err;

  # make_fetch_def returns a (fetchdef, err) tuple; destructure it and
  # return just the fetchdef hashref (dying on error) so callers -
  # including direct(), which indexes fetchdef->{url} - receive a hashref,
  # mirroring the ts/py/rb prepare().
  my ($fetchdef, $fd_err) = $utility->{make_fetch_def}->($ctx);
  die $fd_err if $fd_err;

  return $fetchdef;
}

sub direct {
  my ($self, $fetchargs) = @_;
  my $utility = $self->{_utility};

  # direct() is the raw-HTTP escape hatch: it always returns a result hash
  # ({ ok => ..., ... }) and never dies. prepare() dies on error, so trap
  # that and surface it in the hash.
  my $fetchdef = eval { $self->prepare($fetchargs) };
  if (my $prep_err = $@) {
    return { 'ok' => 0, 'err' => $prep_err };
  }

  $fetchargs = {} unless defined $fetchargs;
  my $ctrl = BluefinTecsUserBackofficeHelpers::to_map(
    BluefinTecsUserBackofficeHelpers::gp($fetchargs, 'ctrl')) || {};

  my $ctx = $utility->{make_context}->({
    'opname' => 'direct',
    'ctrl' => $ctrl,
  }, $self->{_rootctx});

  my $url = defined $fetchdef->{url} ? $fetchdef->{url} : '';
  my ($fetched, $fetch_err) = $utility->{fetcher}->($ctx, $url, $fetchdef);

  return { 'ok' => 0, 'err' => $fetch_err } if $fetch_err;

  if (!defined $fetched) {
    return {
      'ok' => 0,
      'err' => $ctx->make_error('direct_no_response', 'response: undefined'),
    };
  }

  if (Voxgig::Struct::ismap($fetched)) {
    my $status = BluefinTecsUserBackofficeHelpers::to_int(
      BluefinTecsUserBackofficeHelpers::gp($fetched, 'status'));
    my $headers = BluefinTecsUserBackofficeHelpers::gp($fetched, 'headers') || {};

    # No-body responses (204, 304) and explicit zero content-length must
    # skip JSON parsing - calling json() on an empty body errors.
    my $content_length = Voxgig::Struct::ismap($headers)
      ? $headers->{'content-length'} : undef;
    my $no_body = (204 == $status || 304 == $status
      || (defined $content_length && '0' eq "$content_length")) ? 1 : 0;

    my $json_data;
    unless ($no_body) {
      my $jf = BluefinTecsUserBackofficeHelpers::gp($fetched, 'json');
      if (ref $jf eq 'CODE') {
        # Non-JSON body - leave data undef, keep status/headers.
        $json_data = eval { $jf->() };
      }
    }

    return {
      'ok' => ($status >= 200 && $status < 300) ? 1 : 0,
      'status' => $status,
      'headers' => $headers,
      'data' => $json_data,
    };
  }

  return {
    'ok' => 0,
    'err' => $ctx->make_error('direct_invalid', 'invalid response type'),
  };
}


# Canonical facade: $client->OutputActivateDigitalModule->list / ->load({ 'id' => ... })
sub OutputActivateDigitalModule {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_activate_digital_module_entity.pm"));
  return OutputActivateDigitalModuleEntity->new($self, $data);
}


# Canonical facade: $client->OutputActivatePortalModule->list / ->load({ 'id' => ... })
sub OutputActivatePortalModule {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_activate_portal_module_entity.pm"));
  return OutputActivatePortalModuleEntity->new($self, $data);
}


# Canonical facade: $client->OutputActivateStoreModule->list / ->load({ 'id' => ... })
sub OutputActivateStoreModule {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_activate_store_module_entity.pm"));
  return OutputActivateStoreModuleEntity->new($self, $data);
}


# Canonical facade: $client->OutputActivateUser->list / ->load({ 'id' => ... })
sub OutputActivateUser {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_activate_user_entity.pm"));
  return OutputActivateUserEntity->new($self, $data);
}


# Canonical facade: $client->OutputAssignRole->list / ->load({ 'id' => ... })
sub OutputAssignRole {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_assign_role_entity.pm"));
  return OutputAssignRoleEntity->new($self, $data);
}


# Canonical facade: $client->OutputChangeLogo->list / ->load({ 'id' => ... })
sub OutputChangeLogo {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_change_logo_entity.pm"));
  return OutputChangeLogoEntity->new($self, $data);
}


# Canonical facade: $client->OutputCreateMandator->list / ->load({ 'id' => ... })
sub OutputCreateMandator {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_create_mandator_entity.pm"));
  return OutputCreateMandatorEntity->new($self, $data);
}


# Canonical facade: $client->OutputCreateServiceUser->list / ->load({ 'id' => ... })
sub OutputCreateServiceUser {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_create_service_user_entity.pm"));
  return OutputCreateServiceUserEntity->new($self, $data);
}


# Canonical facade: $client->OutputDeactivateUser->list / ->load({ 'id' => ... })
sub OutputDeactivateUser {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_deactivate_user_entity.pm"));
  return OutputDeactivateUserEntity->new($self, $data);
}


# Canonical facade: $client->OutputGetKycDocument->list / ->load({ 'id' => ... })
sub OutputGetKycDocument {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_get_kyc_document_entity.pm"));
  return OutputGetKycDocumentEntity->new($self, $data);
}


# Canonical facade: $client->OutputGetLogo->list / ->load({ 'id' => ... })
sub OutputGetLogo {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_get_logo_entity.pm"));
  return OutputGetLogoEntity->new($self, $data);
}


# Canonical facade: $client->OutputListOfAvailableRole->list / ->load({ 'id' => ... })
sub OutputListOfAvailableRole {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_list_of_available_role_entity.pm"));
  return OutputListOfAvailableRoleEntity->new($self, $data);
}


# Canonical facade: $client->OutputListOfMandator->list / ->load({ 'id' => ... })
sub OutputListOfMandator {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_list_of_mandator_entity.pm"));
  return OutputListOfMandatorEntity->new($self, $data);
}


# Canonical facade: $client->OutputListOfModule->list / ->load({ 'id' => ... })
sub OutputListOfModule {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_list_of_module_entity.pm"));
  return OutputListOfModuleEntity->new($self, $data);
}


# Canonical facade: $client->OutputListOfRoleGroup->list / ->load({ 'id' => ... })
sub OutputListOfRoleGroup {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_list_of_role_group_entity.pm"));
  return OutputListOfRoleGroupEntity->new($self, $data);
}


# Canonical facade: $client->OutputListOfTransactionsHistory->list / ->load({ 'id' => ... })
sub OutputListOfTransactionsHistory {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_list_of_transactions_history_entity.pm"));
  return OutputListOfTransactionsHistoryEntity->new($self, $data);
}


# Canonical facade: $client->OutputListOfUser->list / ->load({ 'id' => ... })
sub OutputListOfUser {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_list_of_user_entity.pm"));
  return OutputListOfUserEntity->new($self, $data);
}


# Canonical facade: $client->OutputProvideCredential->list / ->load({ 'id' => ... })
sub OutputProvideCredential {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_provide_credential_entity.pm"));
  return OutputProvideCredentialEntity->new($self, $data);
}


# Canonical facade: $client->OutputRegisterUser->list / ->load({ 'id' => ... })
sub OutputRegisterUser {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_register_user_entity.pm"));
  return OutputRegisterUserEntity->new($self, $data);
}


# Canonical facade: $client->OutputRemoveRole->list / ->load({ 'id' => ... })
sub OutputRemoveRole {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_remove_role_entity.pm"));
  return OutputRemoveRoleEntity->new($self, $data);
}


# Canonical facade: $client->OutputResendLink->list / ->load({ 'id' => ... })
sub OutputResendLink {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_resend_link_entity.pm"));
  return OutputResendLinkEntity->new($self, $data);
}


# Canonical facade: $client->OutputResetPassword->list / ->load({ 'id' => ... })
sub OutputResetPassword {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_reset_password_entity.pm"));
  return OutputResetPasswordEntity->new($self, $data);
}


# Canonical facade: $client->OutputUpdateConsumer->list / ->load({ 'id' => ... })
sub OutputUpdateConsumer {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_update_consumer_entity.pm"));
  return OutputUpdateConsumerEntity->new($self, $data);
}


# Canonical facade: $client->OutputUpdateProfile->list / ->load({ 'id' => ... })
sub OutputUpdateProfile {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/output_update_profile_entity.pm"));
  return OutputUpdateProfileEntity->new($self, $data);
}


# Canonical facade: $client->Version->list / ->load({ 'id' => ... })
sub Version {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/version_entity.pm"));
  return VersionEntity->new($self, $data);
}



sub test {
  my ($class, $testopts, $sdkopts) = @_;
  $sdkopts = {} unless defined $sdkopts;
  $sdkopts = Voxgig::Struct::clone($sdkopts);
  $sdkopts = {} unless Voxgig::Struct::ismap($sdkopts);

  $testopts = {} unless defined $testopts;
  $testopts = Voxgig::Struct::clone($testopts);
  $testopts = {} unless Voxgig::Struct::ismap($testopts);
  $testopts->{active} = Voxgig::Struct::JTRUE();

  Voxgig::Struct::setpath($sdkopts, 'feature.test', $testopts);

  my $sdk = $class->new($sdkopts);
  $sdk->{mode} = 'test';
  return $sdk;
}

1;
