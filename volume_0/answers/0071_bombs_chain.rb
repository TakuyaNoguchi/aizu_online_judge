class Solve
  SPREAD = (-3..3).map { |i| [[i, 0], [0, i]] }.flatten(1)

  attr_reader :map

  def initialize(map)
    @map = map.dup
  end

  def bomb(x, y)
    @map[x][y] = 0

    SPREAD.each do |dx, dy|
      _x, _y = x + dx, y + dy

      next if (_x < 0 || _x >= 8) || (_y < 0 || _y >= 8)

      if @map[_x][_y] == 1
        bomb(_x, _y)

        @map[_x][_y] = 0
      end
    end
  end
end

gets.to_i.times do |i|
  gets

  map = []
  8.times do
    map.push(gets.chomp.split(//).map(&:to_i))
  end
  map = map.transpose

  x, y = gets.to_i - 1, gets.to_i - 1

  solve = Solve.new(map)
  solve.bomb(x, y)

  puts "Data #{i + 1}:"
  puts solve.map.transpose.map(&:join)
end
