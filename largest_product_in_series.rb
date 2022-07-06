prod = 1
largest = 0
num = ""

File.open("largest_product_in_series.txt", "r") do |f|
  num = f.readlines()[0]
end

len = num.size

b = 0
e = 12

while e < len
  (b..e).each do |i|
    prod *= num[i].to_i

    if prod > largest
      largest = prod
    end
  end
  b += 1
  e += 1
  prod = 1
  
end

puts largest
