#!/usr/bin/perl

@numeros_probables = qw/1 8 4 0 7 2/;
@todos_los_numeros = (@numeros_probables,qw/9 5 6 3/);

foreach (@todos_los_numeros) {
  print $_ . "\n";
}
