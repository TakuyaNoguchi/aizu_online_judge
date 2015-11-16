def gcd(x, y)
  while x >= y
    if y == 0
      puts x
      break
    else
      x, y = y, x % y
    end
  end
end

x, y = gets.split.map(&:to_i)
if x >= y
  gcd(x, y)
else
  gcd(y, x)
end
