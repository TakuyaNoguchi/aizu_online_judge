n = gets.to_i

num_ary = []

n.times do
  num_ary << gets.to_i
end

min, max_diff = nil, nil

num_ary.each_with_index do |num, index|
  if index.zero?
    min = num
    next
  end

  if index == 1
    max_diff = num - num_ary[0]
    min = num if num < min
    next
  end

  if index > 1
    diff = num - min
    max_diff = diff if max_diff < diff
    min = num if num < min
  end
end

puts max_diff
