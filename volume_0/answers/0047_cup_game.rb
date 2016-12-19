current_position = 'A'

while line = gets
  src, dest = line.chomp.split(',')

  if src == current_position
    current_position = dest
  elsif dest == current_position
    current_position = src
  end
end

puts current_position
