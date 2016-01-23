numbers = gets.chomp.split.map(&:to_i)

puts numbers.sort_by { |num| -num }.join(' ')
