#!perl
# OutputResendLink entity test

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
  my $ent = $testsdk->OutputResendLink(undef);
  ok(defined $ent, 'output_resend_link: create instance');
}

BASIC_FLOW: {
  my $setup = output_resend_link_basic_setup(undef);
  my $_live = $setup->{live} ? 1 : 0;
  # Per-op sdk-test-control.json skip.
  for my $_op ('create') {
    my ($_should_skip, $_reason) = BluefinTecsUserBackofficeTestRunner::is_control_skipped(
      'entityOp', "output_resend_link." . $_op, $_live ? 'live' : 'unit');
    if ($_should_skip) {
      note($_reason || 'skipped via sdk-test-control.json');
      pass('output_resend_link: basic flow skipped via sdk-test-control.json');
      last BASIC_FLOW;
    }
  }
  # The basic flow consumes synthetic IDs from the fixture. In live mode
  # without an *_ENTID env override, those IDs hit the live API and 4xx.
  if ($setup->{synthetic_only}) {
    note('live entity test uses synthetic IDs from fixture - set BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_RESEND_LINK_ENTID JSON to run live');
    pass('output_resend_link: basic flow skipped (synthetic IDs only)');
    last BASIC_FLOW;
  }
  my $client = $setup->{client};
  my %V;

  # CREATE
  $V{output_resend_link_ref01_ent} = $client->OutputResendLink(undef);
  $V{output_resend_link_ref01_data} = BluefinTecsUserBackofficeHelpers::to_map(BluefinTecsUserBackofficeHelpers::gp(
    BluefinTecsUserBackofficeHelpers::gpath($setup->{data}, 'new.output_resend_link'), 'output_resend_link_ref01'));

  $V{output_resend_link_ref01_data_result} = $V{output_resend_link_ref01_ent}->create($V{output_resend_link_ref01_data}, undef);
  $V{output_resend_link_ref01_data} = BluefinTecsUserBackofficeHelpers::to_map($V{output_resend_link_ref01_data_result});
  ok(defined $V{output_resend_link_ref01_data}, 'output_resend_link create: data');

}

sub output_resend_link_basic_setup {
  my ($extra) = @_;
  BluefinTecsUserBackofficeTestRunner::load_env_local();

  my $entity_data_file = Cwd::abs_path(
    "$FindBin::Bin/../../.sdk/test/entity/output_resend_link/OutputResendLinkTestData.json");
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
    ['output_resend_link01', 'output_resend_link02', 'output_resend_link03'],
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
  my $entid_env_raw = $ENV{'BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_RESEND_LINK_ENTID'};
  my $idmap_overridden = (defined $entid_env_raw && $entid_env_raw =~ /^\s*\{/) ? 1 : 0;

  my $env = BluefinTecsUserBackofficeTestRunner::env_override({
    'BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_RESEND_LINK_ENTID' => $idmap,
    'BLUEFINTECSUSERBACKOFFICE_TEST_LIVE' => 'FALSE',
    'BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN' => 'FALSE',
    'BLUEFINTECSUSERBACKOFFICE_APIKEY' => 'NONE',
  });

  my $idmap_resolved = BluefinTecsUserBackofficeHelpers::to_map($env->{'BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_RESEND_LINK_ENTID'});
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
