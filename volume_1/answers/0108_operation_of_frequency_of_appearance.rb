while n = gets
  break if n.to_i.zero?
  s = gets.split.map(&:to_i)
  p = nil

  count = 0
  freqency_appearance = Hash.new(0)
  loop do
    freqency_appearance.clear
    s.each { |num| freqency_appearance[num] += 1 }
    p = s.map { |num| freqency_appearance[num] }

    break if s == p

    count += 1
    s = p
  end

  puts count
  puts p.join(' ')
end