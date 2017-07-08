n = gets.to_i
inputs = []

n.times do
  inputs << gets.split.map(&:to_i)
end

puts inputs.sort_by { |i, v| [-v, i] }.first.join(' ')
