## Even Fibonacci Numbers

def fib(num)
  if num.zero?
    0
  elsif num == 1
    1
  else
    num = (fib(num - 1) + fib(num - 2))
  end
  num
end

def fib_seq(max)
  fib_arr = []
  res = count = 0
  until res >= max
    res = fib(count)
    fib_arr.append(res)
    count += 1
  end
  fib_arr.pop
  fib_arr.filter(&:even?).sum
end

fib_seq(4_000_000)
