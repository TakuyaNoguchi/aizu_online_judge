N = gets.to_i
A = gets.split.map(&:to_i)

def selection_sort(a, n)
  count = 0

  0.upto(N - 1) do |i|
    min_j = i

    i.upto(N - 1) do |j|
      min_j = j if a[j] < a[min_j]
    end

    unless i == min_j
      a[i], a[min_j] = a[min_j], a[i]
      count += 1
    end

  end

  puts a.join(' ')
  puts count
end

selection_sort(A, N)