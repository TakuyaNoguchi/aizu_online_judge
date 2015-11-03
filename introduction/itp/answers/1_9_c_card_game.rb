turn = gets.to_i

tarou_point, hanako_point = 0, 0

turn.times do
  tarou_str, hanako_str = gets.chomp.split

  if tarou_str > hanako_str
    tarou_point += 3
  elsif tarou_str < hanako_str
    hanako_point += 3
  else
    tarou_point += 1
    hanako_point += 1
  end
end

puts "#{tarou_point} #{hanako_point}"
