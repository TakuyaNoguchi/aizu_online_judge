while line = gets
  h, w = line.split.map(&:to_i)

  break if h.zero? && w.zero?

  chars = ['#', '.']

  h.times do |i|
    w.times do |j|
      print chars[(i + j) % 2]
    end
    puts
  end
  puts
end
