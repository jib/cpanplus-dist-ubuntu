package CPANPLUS::Dist::Ubuntu;
use base 'CPANPLUS::Dist::Base';

my $Acc = 'dhpm';

### add our own dhmakeperl wrapper object
sub init {
    my $dist = shift;
    
    $dist->status->mk_accessors( $Acc );
    $dist->status->$Acc( CPANPLUS::Dist::Ubuntu::DhMakePerl->new );
    
    return 1;
}
 
package CPANPLUS::Dist::Ubuntu::DhMakePerl;
use base 'DhMakePerl';

### to run the app, from 'dh-make-perl':
# use DhMakePerl;
# 
# my $app = DhMakePerl->new;
# exit $app->run();

1;
