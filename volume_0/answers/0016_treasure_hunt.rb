x, y = 0, 0
rad = 0.0

while line = gets
  d, t = line.split(',').map(&:to_i)

  break if d.zero? && t.zero?

  x += d * Math.sin(rad * Math::PI / 180.0)
  y += d * Math.cos(rad * Math::PI / 180.0)

  rad += t
end

puts [x, y].map(&:truncate).join("\n")
