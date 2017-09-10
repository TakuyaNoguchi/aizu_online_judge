def gcd(x, y)
  return x if y.zero?
  gcd(y, x % y) if x >= y
end

x, y = gets.split.map(&:to_i).minmax.reverse
puts gcd(x, y)