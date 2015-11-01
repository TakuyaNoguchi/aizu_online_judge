n = gets

SUIT = ['S', 'H', 'C', 'D']
hash = {}

SUIT.each do |s|
  hash[s] = [*1..13]
end

while line = gets
  suit, num = line.split
  num = num.to_i

  hash[suit].delete(num)
end

SUIT.each do |s|
  unless hash[s].empty?
    hash[s].each do |num|
      puts "#{s} #{num}"
    end
  end
end
