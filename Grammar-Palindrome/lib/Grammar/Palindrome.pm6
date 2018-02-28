use v6;
unit grammar Grammar::Palindrome;

grammar Grammar::Palindrome {
  token TOP { <palindrome> }
  regex palindrome {   a<palindrome>a     # Use _regex_ here instead of _token_
                    || b<palindrome>b     # _regex_ allows backtracking, _token_ ratchets
                    || c<palindrome>c     # _rule_ is the same as _token_ except that it
                    || d<palindrome>d     # interprets white space as significant
                    || e<palindrome>e
                    || f<palindrome>f
                    || g<palindrome>g
                    || h<palindrome>h
                    || i<palindrome>i
                    || j<palindrome>j
                    || k<palindrome>k
                    || l<palindrome>l
                    || m<palindrome>m
                    || n<palindrome>n
                    || o<palindrome>o
                    || p<palindrome>p
                    || q<palindrome>q
                    || r<palindrome>r
                    || s<palindrome>s
                    || t<palindrome>t
                    || u<palindrome>u
                    || v<palindrome>v
                    || w<palindrome>w
                    || x<palindrome>x
                    || y<palindrome>y
                    || z<palindrome>z
                    || <middle>?
                    }  
   token middle   { <alpha> } 
}


=begin pod

=head1 NAME

Grammar::Palindrome - Grammar to identify palindrome strings.

=head1 SYNOPSIS

  use Grammar::Palindrome;

  my $match = Grammar::Palindrome.parse($string);

=head1 DESCRIPTION

Grammar::Palindrome is a simple grammar whose parse function can be run on a string
and will return true if the string passed to it reads the same as when its reverse.

=head1 AUTHOR

Scott Sotka <ssotka@barracuda.com>

=head1 COPYRIGHT AND LICENSE

Copyright 2018 Scott Sotka

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
