loop do
  n = gets.to_i
  break if n.zero?

  matched = [*2..n].inject(&:*).to_s.scan(/[1-9](0+)\Z/).flatten

  if matched[0]
    puts matched[0].length
  else
    puts 0
  end
end
