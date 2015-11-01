n = gets.to_i

1.upto(n) do |i|
  print " #{i}" if (i % 3).zero? || (i.to_s.include?('3'))
end
puts
