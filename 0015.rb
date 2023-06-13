#  1 --  1 --  1 --  1 --  1
#  1 --  2 --  3 --  4 --  5
#  1 --  3 --  6 -- 10 -- 15
#  1 --  4 -- 10 -- 20 -- 35
#  1 --  5 -- 15 -- 35 -- 70
#  1 --  6 -- 21 -- 56 -- 126

my_arr = []
21.times do
  my_arr << 1
end

20.times do
  last = 0
  my_arr.each_with_index do |num, ind|
    my_arr[ind] = num + last
    last = my_arr[ind]
  end
end

puts my_arr.last
