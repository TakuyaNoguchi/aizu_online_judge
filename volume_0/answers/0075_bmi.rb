readlines.map(&:chomp).each do |input|
  s, w, h = input.split(',')
  s, w, h = s.to_i, w.to_f, h.to_f

  if (w / h**2) >= 25
    puts s
  end
end
