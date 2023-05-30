## Multiples of 3 && 5

(1...1000).filter { |i| (i % 3).zero? || (i % 5).zero? }.sum
