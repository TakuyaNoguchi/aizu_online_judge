loop do
  h, w = gets.split.map(&:to_i)
  break if h.zero? && w.zero?

  tiles = []

  h.times do
    tiles << gets.chomp.split('')
  end

  tiles = tiles.transpose
  passed = []
  current_x, current_y = [0, 0]
  loop = false

  loop do
    if passed.include?([current_x, current_y])
      loop = true
      break
    end

    passed << [current_x, current_y]

    case tiles[current_x][current_y]
    when '>'
      current_x += 1
    when '<'
      current_x -= 1
    when '^'
      current_y -= 1
    when 'v'
      current_y += 1
    else
      break
    end
  end

  if loop
    puts 'LOOP'
  else
    puts "#{current_x} #{current_y}"
  end
end