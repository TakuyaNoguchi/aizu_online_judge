gets.to_i.times do
  num_ary = gets.chomp.split('')
  min = num_ary.sort.join.to_i
  max = num_ary.sort_by { |c| -c.to_i }.join.to_i

  puts max - min
end
