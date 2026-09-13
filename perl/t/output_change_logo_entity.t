#!perl
# OutputChangeLogo entity test

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/../lib";
use Cwd ();

use BluefinTecsUserBackofficeSDK;
require(Cwd::abs_path("$FindBin::Bin/runner.pm"));

{
  my $testsdk = BluefinTecsUserBackofficeSDK->test(undef, undef);
  my $ent = $testsdk->OutputChangeLogo(undef);
  ok(defined $ent, 'output_change_logo: create instance');
}

BASIC_FLOW: {
  my $setup = output_change_logo_basic_setup(undef);
  my $_live = $setup->{live} ? 1 : 0;
  # Per-op sdk-test-control.json skip.
  for my $_op (('create')) {
    my ($_should_skip, $_reason) = BluefinTecsUserBackofficeTestRunner::is_control_skipped(
      'entityOp', "output_change_logo." . $_op, $_live ? 'live' : 'unit');
    if ($_should_skip) {
      note($_reason || 'skipped via sdk-test-control.json');
      pass('output_change_logo: basic flow skipped via sdk-test-control.json');
      last BASIC_FLOW;
    }
  }
  # The basic flow consumes synthetic IDs from the fixture. In live mode
  # without an *_ENTID env override, those IDs hit the live API and 4xx.
  if ($setup->{synthetic_only}) {
    note('live entity test uses synthetic IDs from fixture - set BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_CHANGE_LOGO_ENTID JSON to run live');
    pass('output_change_logo: basic flow skipped (synthetic IDs only)');
    last BASIC_FLOW;
  }
  my $client = $setup->{client};
  my %V;

  # CREATE
  $V{output_change_logo_ref01_ent} = $client->OutputChangeLogo(undef);
  $V{output_change_logo_ref01_data} = BluefinTecsUserBackofficeHelpers::to_map(BluefinTecsUserBackofficeHelpers::gp(
    BluefinTecsUserBackofficeHelpers::gpath($setup->{data}, 'new.output_change_logo'), 'output_change_logo_ref01'));

  $V{output_change_logo_ref01_data_result} = $V{output_change_logo_ref01_ent}->create($V{output_change_logo_ref01_data}, undef);
  $V{output_change_logo_ref01_data} = BluefinTecsUserBackofficeHelpers::to_map(ref($V{output_change_logo_ref01_data_result}) && $V{output_change_logo_ref01_data_result}->can('data_get') ? $V{output_change_logo_ref01_data_result}->data_get : $V{output_change_logo_ref01_data_result});
  ok(defined $V{output_change_logo_ref01_data}, 'output_change_logo create: data');

}

sub output_change_logo_basic_setup {
  my ($extra) = @_;
  BluefinTecsUserBackofficeTestRunner::load_env_local();

  my $entity_data_file = Cwd::abs_path(
    "$FindBin::Bin/../../.sdk/test/entity/output_change_logo/OutputChangeLogoTestData.json");
  my $entity_data = do {
    open my $fh, '<:raw', $entity_data_file or die "Cannot open $entity_data_file: $!";
    local $/;
    Voxgig::Struct::parse_json(<$fh>);
  };

  my $options = {};
  $options->{entity} = $entity_data->{existing};

  my $client = BluefinTecsUserBackofficeSDK->test($options, $extra);

  # Generate idmap via transform.
  my $idmap = Voxgig::Struct::transform(
    ['output_change_logo01', 'output_change_logo02', 'output_change_logo03'],
    {
      '`$PACK`' => ['', {
        '`$KEY`' => '`$COPY`',
        '`$VAL`' => ['`$FORMAT`', 'upper', '`$COPY`'],
      }],
    }
  );

  # Detect ENTID env override before env_override consumes it. When live
  # mode is on without a real override, the basic test runs against
  # synthetic IDs from the fixture and 4xx's. Surface this so the test can
  # skip.
  my $entid_env_raw = $ENV{'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_CHANGE_LOGO_ENTID'};
  my $idmap_overridden = (defined $entid_env_raw && $entid_env_raw =~ /^\s*\{/) ? 1 : 0;

  my $env = BluefinTecsUserBackofficeTestRunner::env_override({
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_CHANGE_LOGO_ENTID' => $idmap,
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE' => 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN' => 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY' => '',
  });

  my $idmap_resolved = BluefinTecsUserBackofficeHelpers::to_map($env->{'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_CHANGE_LOGO_ENTID'});
  if (!defined $idmap_resolved) {
    $idmap_resolved = BluefinTecsUserBackofficeHelpers::to_map($idmap);
  }

  if ((($env->{'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'}) || '') eq 'TRUE') {
    my $merged_opts = Voxgig::Struct::merge([
      # FIRST, so the generated fields below win: sdk-test-control.json's
      # test.client.options adds to the live client, it does not redirect it.
      BluefinTecsUserBackofficeTestRunner::live_client_options(),
      {
        'apikey' => $env->{'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY'},
      },
      (Voxgig::Struct::ismap($extra) ? $extra : {}),
    ]);
    $client = BluefinTecsUserBackofficeSDK->new(BluefinTecsUserBackofficeHelpers::to_map($merged_opts));
  }

  my $live = ((($env->{'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'}) || '') eq 'TRUE') ? 1 : 0;
  return {
    'client' => $client,
    'data' => $entity_data,
    'idmap' => $idmap_resolved,
    'env' => $env,
    'explain' => ((($env->{'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN'}) || '') eq 'TRUE') ? 1 : 0,
    'live' => $live,
    'synthetic_only' => ($live && !$idmap_overridden) ? 1 : 0,
    'now' => BluefinTecsUserBackofficeHelpers::now_ms(),
  };
}

done_testing();
