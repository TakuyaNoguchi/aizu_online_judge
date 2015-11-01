while line = gets
  h, w = line.split.map(&:to_i)

  break if h.zero? && w.zero?

  puts '#' * w
  (h - 2).times do
    print '#'
    (w - 2).times do
      print '.'
    end
    puts '#'
  end
  print "#{'#' * w}\n\n"
end
