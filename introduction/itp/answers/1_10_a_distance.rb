x1, y1, x2, y2 = gets.split.map(&:to_f)

printf("%9.8f\n", Math.sqrt((x2 - x1)**2 + (y2 - y1)**2))
