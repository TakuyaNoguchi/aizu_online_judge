readlines.each do |l|
  n, x = l.split.map(&:to_i)
  break if n.zero? && x.zero?

  puts [*1..n].combination(3).count { |comb| comb.inject(:+) == x }
end
