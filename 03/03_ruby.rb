require 'prime'

def facs(num)
  fac = [1]
  Prime.each do |i|
    fac.append(i) if (num % i).zero?
    break if fac.reduce(:*) == num
  end
  fac.max
end

facs(600_851_475_143)
