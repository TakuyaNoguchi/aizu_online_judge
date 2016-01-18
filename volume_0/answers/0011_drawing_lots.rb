w = gets.to_i
n = gets.to_i

answer = [*1..w]

n.times do
  a, b = gets.split(',').map(&:to_i)

  answer[a - 1], answer[b - 1] = answer[b - 1], answer[a - 1]
end

puts answer
