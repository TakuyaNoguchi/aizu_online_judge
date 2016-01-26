n = gets.to_i

n.times do
  xa, ya, ra, xb, yb, rb = gets.split.map(&:to_f)

  d = Math.sqrt((xb - xa)**2 + (yb - ya)**2)

  if ra > d + rb
    puts '2'
  elsif rb > d + ra
    puts '-2'
  elsif ra + rb >= d
    puts '1'
  else
    puts '0'
  end
end
