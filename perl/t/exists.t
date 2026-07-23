#!perl
# BluefinTecsUserBackoffice SDK exists test

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/../lib";

use BluefinTecsUserBackofficeSDK;

my $testsdk = BluefinTecsUserBackofficeSDK->test(undef, undef);
ok(defined $testsdk, 'create test sdk');

done_testing();
