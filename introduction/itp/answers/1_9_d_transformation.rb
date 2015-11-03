str = gets.chomp
n = gets.to_i

n.times do
  command = gets.chomp.split
  a, b = command[1].to_i, command[2].to_i

  case command[0]
  when 'print'
    puts str[a..b]
  when 'reverse'
    str[a..b] = str[a..b].reverse
  when 'replace'
    str[a..b] = command[3]
  end
end
