N = gets.to_i
a = gets.split.map(&:to_i)

puts a.join(' ')

1.upto(N - 1) do |i|
  v = a[i]
  j = i - 1

  while j >= 0 && a[j] > v
    a[j + 1] = a[j]
    j -= 1
  end

  a[j + 1] = v

  puts a.join(' ')
end