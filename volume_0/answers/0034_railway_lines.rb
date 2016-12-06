while line = gets
  input = line.chomp.split(',').map(&:to_i)

  l = input[0..9]
  v1, v2 = input[10..11]

  cumulative_sum = l.inject([]) do |memo, num|
    memo << (memo.last || 0) + num
    memo
  end

  intersect_point = cumulative_sum[-1] * Rational(v1, v1 + v2)
  puts cumulative_sum.index { |num| num >= intersect_point } + 1
end
