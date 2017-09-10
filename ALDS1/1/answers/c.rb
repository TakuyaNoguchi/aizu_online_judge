class Integer
  def prime?
    return true if self == 2
    return false if self < 2 or self.even?

    sqrt = Math.sqrt(self)

    3.step(sqrt.ceil, 2) do |i|
      return false if (self % i).zero?
    end

    true
  end
end

puts readlines.map(&:to_i)[1..-1].select(&:prime?).size