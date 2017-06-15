loop do
  n = gets.to_i
  break if n.zero?

  a = []
  n.times do |i|
    a << gets.to_i
  end

  max = -100_000
  n.times do |i|
    sum = 0
    a[i..-1].each do |_a|
      sum += _a
      max = sum if sum > max
    end
  end

  puts max
end
