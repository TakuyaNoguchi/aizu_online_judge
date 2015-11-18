require 'prime'

n = gets.to_i
count = 0

n.times do
  num = gets.to_i
  count += 1 if num.prime?
end

puts count
