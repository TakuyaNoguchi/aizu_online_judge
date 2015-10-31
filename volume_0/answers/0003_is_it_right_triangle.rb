num = gets.to_i

num.times do
  a, b, c = gets.split.map(&:to_i)

  if (a**2 + b**2 == c**2 or
      a**2 + c**2 == b**2 or
      b**2 + c**2 == a**2)
    puts 'YES'
  else
    puts 'NO'
  end
end
