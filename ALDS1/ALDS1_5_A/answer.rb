N = gets.to_i
A = gets.split.map(&:to_i)
sums = [*1...2**N].map { |bit|
  [*0...N].inject(0) { |sum, i| sum + ((2**i & bit).zero? ? 0 : A[i]) }
}

gets
gets.split.each do |n|
  puts sums.index(n.to_i) ? 'yes' : 'no'
end
