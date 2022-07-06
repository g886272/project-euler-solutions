x = 1
y = 1
fib = 0
sum_even = 0

while fib < 4000000
  fib = x + y
  x = y
  y = fib

  if fib % 2 == 0
    sum_even += fib
  end
end

puts sum_even.to_s
