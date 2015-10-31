index = 1
while line = gets
  num = line.to_i
  break if num.zero?

  puts "Case #{index}: #{num}"
  index += 1
end
