input_ary = []

while line = gets
  input_ary << line.to_i
end

puts input_ary.sort_by { |num| -num }.first(3)
