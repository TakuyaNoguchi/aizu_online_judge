while line = gets
  numbers = line.chomp.split('').map(&:to_i)

  loop do
    _numbers = []
    numbers.each_cons(2) do |a, b|
      _numbers << (a + b) % 10
    end
    numbers = _numbers.dup
    break if numbers.size == 1
  end

  puts numbers.first
end
