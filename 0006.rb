#!/usr/bin/env ruby
#
# Sum Square Difference
#
# The sum of the squares of the first ten natural numbers is, 385.
#
# The square of the sum of the first ten natural numbers is, 3025
#
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

(1..100).sum.pow(2) - (1..100).map { |i| i.pow(2) }.sum
