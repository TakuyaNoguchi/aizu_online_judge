loop do
  n = gets.to_i
  break if n.zero?

  totals = Hash.new(0)

  n.times do
    e, p, q = gets.split.map(&:to_i)

    totals[e] += p * q
  end

  employees = totals.select { |_, total| total >= 1_000_000 }.keys

  if employees.empty?
    puts 'NA'
  else
    puts employees.join("\n")
  end
end
