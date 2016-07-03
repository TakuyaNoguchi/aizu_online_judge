NUMBERS = (0..9).to_a

while line = gets
  n, s = line.split.map(&:to_i)
  break if n.zero? && s.zero?

  combinations = NUMBERS.combination(n).select { |num|
    num.inject(&:+) == s
  }

  puts combinations.size
end
