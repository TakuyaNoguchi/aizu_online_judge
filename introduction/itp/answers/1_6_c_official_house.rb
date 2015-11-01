n = gets.to_i

official_house = Array.new(4) do |i|
  [(i + 1), Array.new(3) { Array(0) * 10 } ]
end

n.times do
  # b棟f階のr番目の部屋にv人が追加で入居
  b, f, r, v = gets.split.map(&:to_i)

  official_house.assoc(b)[1][f - 1][r - 1] += v
end

1.upto(4) do |i|
  official_house.assoc(i)[1].each do |people|
    puts " #{people.join(' ')}"
  end
  break if i > 3

  puts '#' * 20
end
