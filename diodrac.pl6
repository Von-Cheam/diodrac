#!/usr/bin/env perl6

use v6; use Terminal::ANSIColor;

my Int $j = 1; my Int $k = 14;

loop (my Int $ro = 0; $ro < 17; $ro++) {
   loop (my Int $co = 0; $co < 40; $co++) {
      given $ro {
         when ($_ < 2) { write(); }
         when ($_ < 7) {
            if ( ( abs($co - 14) < $j )
            || ( abs($co - 26)) < $j ) {
               write(True);
            } else { write(); }
         }
         when ($_ < (7 + 1)) {
            if ( abs($co - 20) < 13 ) { write(True); }
            else { write(); }
         }
         when ($_ < 14) {
            if ( abs($co - 20) < $k ) { write(True); }
            else { write(); }
         }
         when ($_ == 14) {
            if ($co == 20) { write(True); }
            else { write(); }
         }
      }
   }
   say ""; if ($ro >= 7) { $k -= 2; } else { $j++; }
}

sub write(Bool $z = False) {
   if $z { print colored(0x25C6.chr(), "200"); }
   else { print " "; }
}
