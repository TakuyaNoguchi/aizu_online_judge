while line = gets
  a, b, c, d, e, f = line.split.map(&:to_i)

  x = ((e * c - b * f) / (a * e - b * d).to_f).round(4)
  y = ((a * f - d * c) / (a * e - b * d).to_f).round(4)

  x = x.abs if x.zero?
  y = y.abs if y.zero?

  printf("%4.3f %4.3f\n", x, y)
end
