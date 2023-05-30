require 'prime'
### Largest Prime Factor
#
#   The prime factors of 13195 are 5, 7, 13 and 29.
#   What is the largest prime factor of the number 600851475143?
#
def prime_list(num)
  prime_arr = []
  (2..(num / 2)).each { |i| prime_arr.append(i) if Prime.prime?(i) }
  prime_arr
end

def prime_perm(num, arr)
  i = 3
  loop do
    uniq_arr = arr.permutation(i).to_a.map(&:sort).uniq
    uniq_arr.map do |fac|
      return fac.max if arr.reduce(1) { |acc, ele| acc * ele } == num

      puts fac
    end
    i += 1
  end
end
