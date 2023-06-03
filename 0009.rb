#!/usr/bin/env ruby
#
# Special Pythagorean Triplet
#
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

(1..998).to_a.combination(3)
        .find { |i| i.sum == 1000 && (i[0]**2) + (i[1]**2) == (i[2]**2) }
        .compact
        .inject(:*)
