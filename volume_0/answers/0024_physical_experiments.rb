while line = gets
  t = line.to_f / 9.8
  y = 4.9 * t**2

  n = (y / 5).ceil + 1

  puts n
end
