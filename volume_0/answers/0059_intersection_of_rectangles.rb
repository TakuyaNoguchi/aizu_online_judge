while line = gets
  xa1, ya1, xa2, ya2, xb1, yb1, xb2, yb2 = line.split.map(&:to_f)

  if (xa1 > xb2) || (xa2 < xb1) || (ya1 > yb2) || (ya2 < yb1)
    puts 'NO'
  else
    puts 'YES'
  end
end
