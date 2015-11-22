N = gets.to_i

array = gets.split
bubble_sort  = array.dup
selection_sort = array.dup

before = Hash.new { |h, k| h[k] = [] }
bubble_sort_after = Hash.new { |h, k| h[k] = [] }
selection_sort_after = Hash.new { |h, k| h[k] = [] }

array.each do |elem|
  before[elem[1].to_i] << elem[0]
end

flag = true
0.upto(N - 1) do |i|
  flag = false
  (N - 1).downto(1) do |j|
    if bubble_sort[j][1].to_i < bubble_sort[j - 1][1].to_i
      bubble_sort[j], bubble_sort[j - 1] = bubble_sort[j - 1], bubble_sort[j]
      flag = true
    end
  end

  break unless flag
end

bubble_sort.each do |elem|
  bubble_sort_after[elem[1].to_i] << elem[0]
end

puts bubble_sort.join(' ')

1.upto(9) do |num|
  if bubble_sort_after[num].length >= 2
    if bubble_sort_after[num] != before[num]
      p bubble_sort_after[num]
      p before[num]
      puts 'Not stable'
      break
    end
  end

  puts 'Stable' if num == 9
end

0.upto(N - 1) do |i|
  minj = i

  i.upto(N - 1) do |j|
    if selection_sort[j][1].to_i < selection_sort[minj][1].to_i
      minj = j
    end
  end

  selection_sort[i], selection_sort[minj] = selection_sort[minj], selection_sort[i]
end

selection_sort.each do |elem|
  selection_sort_after[elem[1].to_i] << elem[0]
end

puts selection_sort.join(' ')

1.upto(9) do |num|
  if selection_sort_after[num].length >= 2
    if selection_sort_after[num] != before[num]
      puts 'Not stable'
      break
    end
  end

  puts 'Stable' if num == 9
end
