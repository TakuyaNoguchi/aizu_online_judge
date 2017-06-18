loop do
  points = []

  8.times do |_y|
    gets.split(//).map(&:to_i).each_with_index do |n, _x|
      points.push({ x: _x, y: _y }) if n == 1
    end
  end

  p1, p2, p3, p4 = points

  if ((p1[:x] == p3[:x]) && (p2[:x] == p4[:x]) &&
      (p1[:y] == p2[:y]) && (p3[:y] == p4[:y]))
    puts 'A'
  elsif points.all? { |point| point[:x] == p1[:x] }
    puts 'B'
  elsif points.all? { |point| point[:y] == p1[:y] }
    puts 'C'
  elsif p2[:y] == p3[:y]
    if p1[:x] > p4[:x]
      puts 'D'
    else
      puts 'F'
    end
  else
    if p1[:x] < p4[:x]
      puts 'E'
    else
      puts 'G'
    end
  end

  break if gets.nil?
end
