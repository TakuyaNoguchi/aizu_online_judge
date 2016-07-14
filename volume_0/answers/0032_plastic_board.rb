num_of_rectangle, num_of_rhombus = 0, 0

$stdin.readlines.each do |input|
  edge1, edge2, diagonal_line = input.split(',').map(&:to_i)

  num_of_rectangle += 1 if (edge1**2 + edge2**2) == diagonal_line**2
  num_of_rhombus += 1 if edge1 == edge2
end

puts num_of_rectangle, num_of_rhombus
