#!/usr/bin/perl

sub add {
    $x = $_[0];
    $y = $_[1];
    $z = $x + $y;
    print "Answer: $z ";
}


print "Enter the number1 :";
$num1 = <STDIN>;

print "Enter the number2 :";
$num2 = <STDIN>;

add( $num1, $num2 );
