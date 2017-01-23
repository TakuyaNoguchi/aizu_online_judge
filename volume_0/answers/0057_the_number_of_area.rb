readlines.map(&:to_i).each do |n|
  puts (n**2 + n + 2) / 2
end
