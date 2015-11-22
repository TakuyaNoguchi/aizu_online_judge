N = gets.to_i
array = gets.split.map(&:to_i)
count = 0

0.upto(N - 1) do |i|
  minj = i

  i.upto(N - 1) do |j|
    if array[j] < array[minj]
      minj = j
    end
  end

  unless i == minj
    array[i], array[minj] = array[minj], array[i]
    count += 1
  end
end

puts array.join(' ')
puts count
