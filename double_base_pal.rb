sum = 0

def check_decimal(n)
  len = n.to_s.size
  if len % 2 == 0
    first = n.to_s.slice(0, len / 2)
    second = n.to_s.slice(len / 2, len)
  else
    first = n.to_s.slice(0, len / 2)
    second = n.to_s.slice(len / 2 + 1, len)
  end

  if first == second.reverse!
    return true
  end
end

def check_binary(n)
  bin = n.to_s(2)
  len = bin.size
  if len % 2 == 0
    first = bin.slice(0, len / 2)
    second = bin.slice(len / 2, len)
  else
    first = bin.slice(0, len / 2)
    second = bin.slice(len / 2 + 1, len)
  end

  if first == second.reverse!
    return true
  end
end

(1..1000000).each do |i| 
  if (check_decimal(i) && check_binary(i))
    puts i
    sum += i
  end
end

puts "done. sum = " + sum.to_s
