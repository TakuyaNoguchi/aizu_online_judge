require 'bigdecimal'

n = gets.to_i

n.times do
  # to_f を使用すると比較の際に問題が発生して Wrong Answer になる
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.split.map(&method(:BigDecimal))

  ab_slope = (y2 - y1) / (x2 - x1)
  cd_slope = (y4 - y3) / (x4 - x3)

  if ab_slope == cd_slope
    puts 'YES'
  else
    puts 'NO'
  end
end
