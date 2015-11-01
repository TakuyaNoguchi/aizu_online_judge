n, m = gets.split.map(&:to_i)

a = []
n.times do
  a << gets.split.map(&:to_i)
end

b = []
m.times do
  b << gets.to_i
end

a.each do |a_ary|
  sum = 0
  m.times do |i|
    sum += a_ary[i] * b[i]
  end

  puts sum
end
