# BluefinTecsUserBackoffice SDK utility: clean

use strict;
use warnings;

package BluefinTecsUserBackofficeUtilities;

our %REGISTRY;

$REGISTRY{clean} = sub {
  my ($ctx, $val) = @_;
  return $val;
};

1;
