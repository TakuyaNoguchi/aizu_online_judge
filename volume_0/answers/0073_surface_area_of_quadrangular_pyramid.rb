readlines.map(&:to_i).each_slice(2) do |x, h|
  break if x.zero? && h.zero?

  puts x * x + (x * (Math.sqrt((x / 2.0)**2 + h**2)) * 0.5) * 4
end
