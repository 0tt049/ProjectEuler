#!/usr/bin/env ruby
require 'prime'
#
# Summation of Primes
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

# First solution => (2..2_00_00).filter { |i| Prime.prime?(i) }.sum
#
# Much better solution:

(Prime.to_a 2_000_000).sum ## 🙀
