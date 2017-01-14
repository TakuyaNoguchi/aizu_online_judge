require 'bigdecimal'

readlines.each do |input|
  a, b, n = input.chomp.split

  decimal = (BigDecimal.new(a) / b.to_i).to_s('F').scan(/\d+\.(\d+)/).flatten.first
  puts decimal[0, n.to_i].chars.inject(0) { |sum, d| sum += d.to_i }
end
