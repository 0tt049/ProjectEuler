# The following iterative sequence is defined for the set of positive integers:

# n -> n / 2 (n is even)
# n -> 3n + 1 (n is odd)

# It can be seen that this sequence (starting at 13
# and finishing at 1 ) contains 10 terms.
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.

def process(num)
  my_arr = []
  while num != 1
    if num.even?
      num /= 2
    else
      num = (3 * num) + 1
    end
    my_arr << num
  end
  my_arr.length
end

def getmax
  max = 0
  my_num = 1
  (2..1_000_000).map do |item|
    length = process(item)
    if length > max
      max = length
      my_num = item
    end
  end
  return my_num
end

getmax
