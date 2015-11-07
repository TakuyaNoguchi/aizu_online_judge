while n = gets.to_i
  break if n.zero?

  students = gets.split.map(&:to_i)
  average = students.inject(&:+) / n.to_f

  dispersion = students.inject(0) { |sum, num| sum + (num - average)**2 } / n

  puts Math.sqrt(dispersion)
end
