#print "Hello charan  \n";
#print "Hello charan new line  \n ";
=pod
my $name = "charan";
my $age = "23";
print "name = $name \n";
print "age  = $age \n";
=cut 

=pod
print "enter:  \n";
my $name1 = <STDIN> ;
chomp($name1);
print "name = $name1\n";
=cut

=pod
print "Enter your name: ";
my $name = <STDIN>;
chomp($name);
print "Hello $name\n";
=cut 

=pod
print " here we perform addition\n ";
print " enter the a value 1 : ";
my $a = <STDIN> ;
#chomp($a);
print " enter the a value 2 : ";
my $b = <STDIN> ;

my $c = $a + $b ;
print " the sum = $c \n";
=cut



=pod
print "enter the number :";
my $a = <STDIN>;
chomp($a);
my $b = reverse($a);
if($a eq $b){
	print " yes it is a palindrome \n ";
}
else {
	print"no its not a palindrome \n";
}
=cut




=pod
my $balanced_counter=0;
my $acceptable_counter=0;
my $unbalanced_counter=0;

my %chains =( 
		chain_0 => 1200 ,
		chain_1 => 1210 ,
		chain_2 => 850, 
		chain_3 => 400 ,
		chain_4 => 1195 ,
		chain_5 => 979 );

foreach my $chain(sort keys %chains){

	if($chains{$chain} >=1000){	
		print "balanced $chain : $chains{$chain}\n";
		 $balanced_counter ++;

		}
	elsif($chains{$chain} >=700){
		print "acceptable $chain : $chains{$chain}\n ";
		 $acceptable_counter ++;

		}
	else {
		 $unbalanced_counter ++;

		print "unbalanced  $chain : $chains{$chain}\n";
		}
	#print "$chain : $chains{$chain} \n";
} 
print " balaned = $balanced_counter \n";
print "acceptable = $acceptable_counter \n";
print " unbalanced =$unbalanced_counter \n";
=cut





=pod
	
open(my $de , "<" , "env") or die "cannot open file : $!";

while(my $line = <$de>){
		chomp $line ;
		print "$line \n";
	}

close($de);
=cut


use strict;
use warnings;

=pod 
print "opening d_report\n";

open(my $var,  "<", "d_report.txt") or die "cannot open file :";

while(my $lines  = <$var>){
	chomp $lines;
	print " $lines  \n" ;
}

close($var);
=cut

=pod
print " creating summary file ";

open(my $var , ">" ,"summary.sv")or die " cannot create a file :$!";

print $var " === DFT Summary Report ===\n";
print $var "Design   : top_chip\n";
print $var "Tool     : Tessent\n";
print $var "Coverage : 96.5%\n";
print $var "Status   : PASs\n";


close($var);

=cut

=pod
use strict;
use warnings;

open(my $var,  "<", "chains.txt") or die "Cannot open: $!";
open(my $var1, ">>", "result.txt") or die "Cannot open: $!";

print $var1 "=== Scan Chain Report ===\n";

while (my $line = <$var>) {
    chomp $line;
   # next if $line =~ /^INFO/;

    if ($line =~ /^(chain_\d+) cells: (\d+)/) {
        my $chain_name = $1;
        my $cells      = $2;
		 print $var1 "$chain_name = $cells a\n";
		 
		     }
}

close($var);
close($var1);
   
=cut





$a ;
print " $a /n";
print " enter first number : ";
my $a = <STDIN>;

print " enter second number : ";

my $b = <STDIN>;
print "---------------------------------------------------\n";
print "---------------------------------------------------\n";

print " SELECT WHAT OPERATION U WANT TO DO \n ";

print " U CAN SELECT FROM THIS KEYWORDS :) \n";


print "---------------------------------------------------\n";
print "---------------------------------------------------\n";
print "---------------------------------------------------\n";
print " FOR ADDITION : add \n FOR SUBTRACTION subt \n FOR MULTIPLICATION : mul \n";
print "---------------------------------------------------\n";
print "---------------------------------------------------\n";

print " ENTER THE OPCODE  :";


my $opcode = <STDIN>;
chomp $opcode ;

my $c ;


if($opcode eq "add"){
		$c = $a + $b ;
		print " ANS = $c \n";
	}
elsif($opcode eq "subt"){ 
		$c = $a-$b ;
		print " ANS = $c \n";
	}
elsif($opcode eq "mul"){
		$c = $a * $b;
		print " ANS = $c \n";
	}
else {
	print "cannot find that operationm \n";
}


print " enter first number : \n";
