square = 0
sum_square = 0

(1..100).each do |i|
  square += i**2
  sum_square += i
end

sum_square = sum_square ** 2

if square > sum_square
  puts square - sum_square
else
  puts sum_square - square
end
