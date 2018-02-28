use v6;
use Test;
use lib './lib';
use Grammar::Palindrome;

plan 8;

my @success_test = ('assa','biffib','goog','afa','madamimadam','amanaplanacanalpanama');
my @fail_test = ('asdf', 'gaaga');

for @success_test -> $string {
    my $match = Grammar::Palindrome.parse($string);
    ok $match, 'Is Palindrome - ' ~ $string;
}

for @fail_test -> $string {
    my $match = Grammar::Palindrome.parse($string);
    nok $match, 'Is Not Palindrome - ' ~ $string;
}
done-testing;
