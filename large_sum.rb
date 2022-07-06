sum = 0

File.open("13.txt", "r") do |f|
  res = f.readlines
  res.each do |i|
    sum += i.to_i
  end
end

puts sum.to_s[0..9]
puts "length of sum is " + sum.to_s.length().to_s
