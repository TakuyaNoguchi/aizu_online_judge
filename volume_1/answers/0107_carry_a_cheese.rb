loop do
  d_w_h = gets.split.map(&:to_i)
  break if d_w_h.all?(&:zero?)

  n = gets.to_i
  x, y = d_w_h.sort.take(2)

  n.times do
    diameter = gets.to_i * 2
    puts Math.sqrt(x**2 + y**2) < diameter ? 'OK' : 'NA'
  end
end
