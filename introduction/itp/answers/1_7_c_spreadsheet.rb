r_num, c_num = gets.split.map(&:to_i)

row_sum = Array.new(r_num) { 0 }
col_sum = Array.new(c_num) { 0 }

r_num.times do |i|
  row = gets.split.map(&:to_i)
  row_sum[i] = row.inject(&:+)

  print "#{row.join(' ')} #{row_sum[i]}\n"

  row.each_with_index do |col, index|
    col_sum[index] += col
  end
end

puts "#{col_sum.join(' ')} #{row_sum.inject(&:+)}"
