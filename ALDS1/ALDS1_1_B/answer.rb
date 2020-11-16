x, y = gets.split.map(&:to_i)

x, y = y, x if x < y

while y.positive?
  r = x % y
  x = y
  y = r
end

puts x
