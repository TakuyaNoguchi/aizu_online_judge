def exclude_not_exist_point(sink_points)
  sink_points.reject do |x, y|
    x < 0 or x >= 10 or y < 0 or y >= 10
  end
end

def small_sink_points(x, y)
  exclude_not_exist_point([
    [x - 1, y],
    [x, y + 1],
    [x, y],
    [x, y - 1],
    [x + 1, y],
  ])
end

def medium_sink_points(x, y)
  sink_points = []

  (-1..1).each do |x_offset|
    (-1..1).each do |y_offset|
      sink_points.push([x + x_offset, y + y_offset])
    end
  end

  exclude_not_exist_point(sink_points)
end

def large_sink_points(x, y)
  sink_points = []

  5.times do |i|
    case i
    when 0, 4
      sink_points.push([x + (i.zero? ? 2 : -2), y])
    when 1, 3
      sink_points.concat((-1..1).map { |y_offset|
        [x + (i == 1 ? 1 : -1), y + y_offset]
      })
    when 2
      sink_points.concat((-2..2).map { |y_offset|
        [x, y + y_offset]
      })
    end
  end

  exclude_not_exist_point(sink_points)
end

paper = Array.new(10) { Array.new(10) { 0 }}

while line = gets
  x, y, size = line.split(',').map(&:to_i)
  sink_points = []

  case size
  when 1
    sink_points = small_sink_points(x, y)
  when 2
    sink_points = medium_sink_points(x, y)
  when 3
    sink_points = large_sink_points(x, y)
  end

  sink_points.each do |point|
    paper[point[0]][point[1]] += 1
  end
end

not_colored_cell = 0
most_deep_num = 0

paper.each do |row|
  not_colored_cell += row.count(&:zero?)
  most_deep_num = row.max if row.max > most_deep_num
end

puts not_colored_cell, most_deep_num
