class Vector
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def self.sub(a, b)
    x = a.x - b.x
    y = a.y - b.y

    new(x, y)
  end
end

while line = gets
  x1, y1, x2, y2, x3, y3, xp, yp = line.chomp.split.map(&:to_f)

  a = Vector.new(x1, y1)
  b = Vector.new(x2, y2)
  c = Vector.new(x3, y3)
  p = Vector.new(xp, yp)

  ab = Vector.sub(b, a)
  bp = Vector.sub(p, b)
  bc = Vector.sub(c, b)
  cp = Vector.sub(p, c)
  ca = Vector.sub(a, c)
  ap = Vector.sub(p, a)

  cross_product1 = ab.x * bp.y - ab.y * bp.x
  cross_product2 = bc.x * cp.y - bc.y * cp.x
  cross_product3 = ca.x * ap.y - ca.y * ap.x

  if (cross_product1 > 0 && cross_product2 > 0 && cross_product3 > 0) ||
      (cross_product1 < 0 && cross_product2 < 0 && cross_product3 < 0)
    puts 'YES'
  else
    puts 'NO'
  end
end
