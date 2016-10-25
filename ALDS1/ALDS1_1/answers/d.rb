n = gets.to_i
inputs = []
n.times do
  inputs << gets.to_i
end

min_value = inputs[0]
max_value = -100_000_000_000
inputs[1..-1].each do |num|
  max_value = [max_value, num - min_value].max
  min_value = [min_value, num].min
end

puts max_value
