while line = gets
  d = line.to_i

  area = 0

  d.step(600 - d, d) do |i|
    area += i**2 * d
  end

  puts area
end
