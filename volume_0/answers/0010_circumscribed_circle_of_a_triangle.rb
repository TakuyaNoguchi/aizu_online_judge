n = gets.to_i

n.times do
  x1, y1, x2, y2, x3, y3 = gets.split.map(&:to_f)

  a1 = 2 * (x2 - x1)
  b1 = 2 * (y2 - y1)
  c1 = x1**2 - x2**2 + y1**2 - y2**2
  a2 = 2 * (x3 - x1)
  b2 = 2 * (y3 - y1)
  c2 = x1**2 - x3**2 + y1**2 - y3**2

  px = (b1 * c2 - b2 * c1) / (a1 * b2 - a2 * b1)
  py = (c1 * a2 - c2 * a1) / (a1 * b2 - a2 * b1)

  a = Math.sqrt((x2 - x1)**2 + (y2 - y1)**2)
  b = Math.sqrt((x3 - x2)**2 + (y3 - y2)**2)
  c = Math.sqrt((x1 - x3)**2 + (y1 - y3)**2)

  s = (a + b + c) / 2

  r = a * b * c / (4 * Math.sqrt(s * (s - a) * (s - b) * (s - c)))

  printf("%4.3f %4.3f %4.3f\n", px, py, r)
end
