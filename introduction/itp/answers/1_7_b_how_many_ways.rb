while line = gets
  n, x = line.split.map(&:to_i)
  break if n.zero? && x.zero?

  result = [*1..n].combination(3).map { |ary| ary.inject(&:+) }.count(x)
  puts result
end
