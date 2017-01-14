loop do
  n = gets.to_i
  break if n.zero?

  matched = [*2..n].inject(&:*).to_s.scan(/[1-9](0+)\Z/).flatten

  puts matched[0] ? matched[0].length : 0
end
