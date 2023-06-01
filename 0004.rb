## Largest Palindrome Product
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is
# 9009 = 91 * 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

pal_arr = ((-999 * 999)..(-100 * 100))
            .map(&:abs)
            .filter { |i| i.to_s == i.to_s.reverse }

div_arr = (-999..-100)
            .map(&:abs)

def myfun(pals, divs)
  pals.map do |pal|
    my_div = divs.find { |div| (pal % div).zero? && (pal / div).to_s.length == 3 }
  return "#{my_div} * #{pal / my_div} = #{pal}" if my_div
  end
end

myfun(pal_arr, div_arr)
