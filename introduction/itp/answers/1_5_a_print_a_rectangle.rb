while line = gets
  h, w = line.split.map(&:to_i)

  break if h.zero? && w.zero?

  h.times do
    w.times do
      print '#'
    end
    puts
  end

  puts
end
