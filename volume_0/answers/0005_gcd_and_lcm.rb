while line = gets
  a, b = line.split.map(&:to_i)

  if a >= b
    m, n = a, b
  else
    n, m = a, b
  end

  loop do
    break m if n == 0

    m, n = n, m % n
  end

  gcd = m
  lcm = a * b / gcd

  print "#{gcd} #{lcm}\n"
end
