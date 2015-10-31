n = gets.to_i
nums = gets.split.map(&:to_i)

min, max = nums.minmax
sum = nums.inject(0, &:+)

puts "#{min} #{max} #{sum}"
