#!perl
# Version entity test

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
  my $ent = $testsdk->Version(undef);
  ok(defined $ent, 'version: create instance');
}

BASIC_FLOW: {
  my $setup = version_basic_setup(undef);
  my $_live = $setup->{live} ? 1 : 0;
  # Per-op sdk-test-control.json skip.
  for my $_op ('load') {
    my ($_should_skip, $_reason) = BluefinTecsUserBackofficeTestRunner::is_control_skipped(
      'entityOp', "version." . $_op, $_live ? 'live' : 'unit');
    if ($_should_skip) {
      note($_reason || 'skipped via sdk-test-control.json');
      pass('version: basic flow skipped via sdk-test-control.json');
      last BASIC_FLOW;
    }
  }
  # The basic flow consumes synthetic IDs from the fixture. In live mode
  # without an *_ENTID env override, those IDs hit the live API and 4xx.
  if ($setup->{synthetic_only}) {
    note('live entity test uses synthetic IDs from fixture - set BLUEFINTECSUSERBACKOFFICE_TEST_VERSION_ENTID JSON to run live');
    pass('version: basic flow skipped (synthetic IDs only)');
    last BASIC_FLOW;
  }
  my $client = $setup->{client};
  my %V;

  # Bootstrap entity data from existing test data.
  $V{version_ref01_data_raw} = Voxgig::Struct::items(BluefinTecsUserBackofficeHelpers::to_map(
    BluefinTecsUserBackofficeHelpers::gpath($setup->{data}, 'existing.version')));
  $V{version_ref01_data} = undef;
  if (@{ $V{version_ref01_data_raw} || [] }) {
    $V{version_ref01_data} = BluefinTecsUserBackofficeHelpers::to_map($V{version_ref01_data_raw}[0][1]);
  }

  # LOAD
  $V{version_ref01_ent} = $client->Version(undef);
  $V{version_ref01_match_dt0} = {};
  $V{version_ref01_data_dt0_loaded} = $V{version_ref01_ent}->load($V{version_ref01_match_dt0}, undef);
  ok(defined $V{version_ref01_data_dt0_loaded}, 'version load: data');

}

sub version_basic_setup {
  my ($extra) = @_;
  BluefinTecsUserBackofficeTestRunner::load_env_local();

  my $entity_data_file = Cwd::abs_path(
    "$FindBin::Bin/../../.sdk/test/entity/version/VersionTestData.json");
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
    ['version01', 'version02', 'version03'],
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
  my $entid_env_raw = $ENV{'BLUEFINTECSUSERBACKOFFICE_TEST_VERSION_ENTID'};
  my $idmap_overridden = (defined $entid_env_raw && $entid_env_raw =~ /^\s*\{/) ? 1 : 0;

  my $env = BluefinTecsUserBackofficeTestRunner::env_override({
    'BLUEFINTECSUSERBACKOFFICE_TEST_VERSION_ENTID' => $idmap,
    'BLUEFINTECSUSERBACKOFFICE_TEST_LIVE' => 'FALSE',
    'BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN' => 'FALSE',
    'BLUEFINTECSUSERBACKOFFICE_APIKEY' => 'NONE',
  });

  my $idmap_resolved = BluefinTecsUserBackofficeHelpers::to_map($env->{'BLUEFINTECSUSERBACKOFFICE_TEST_VERSION_ENTID'});
  if (!defined $idmap_resolved) {
    $idmap_resolved = BluefinTecsUserBackofficeHelpers::to_map($idmap);
  }

  if ((($env->{'BLUEFINTECSUSERBACKOFFICE_TEST_LIVE'}) || '') eq 'TRUE') {
    my $merged_opts = Voxgig::Struct::merge([
      {
        'apikey' => $env->{'BLUEFINTECSUSERBACKOFFICE_APIKEY'},
      },
      (Voxgig::Struct::ismap($extra) ? $extra : {}),
    ]);
    $client = BluefinTecsUserBackofficeSDK->new(BluefinTecsUserBackofficeHelpers::to_map($merged_opts));
  }

  my $live = ((($env->{'BLUEFINTECSUSERBACKOFFICE_TEST_LIVE'}) || '') eq 'TRUE') ? 1 : 0;
  return {
    'client' => $client,
    'data' => $entity_data,
    'idmap' => $idmap_resolved,
    'env' => $env,
    'explain' => ((($env->{'BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN'}) || '') eq 'TRUE') ? 1 : 0,
    'live' => $live,
    'synthetic_only' => ($live && !$idmap_overridden) ? 1 : 0,
    'now' => BluefinTecsUserBackofficeHelpers::now_ms(),
  };
}

done_testing();
