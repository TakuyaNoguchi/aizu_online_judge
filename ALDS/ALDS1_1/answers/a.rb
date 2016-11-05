def insertion_sort(a, n)
  1.upto(n - 1) do |i|
    puts a.join(' ')

    v = a[i]
    j = i - 1

    while j >= 0 && a[j] > v
      a[j + 1] = a[j]
      j -= 1
    end

    a[j + 1] = v
  end

  puts a.join(' ')
end

N = gets.to_i
A = gets.split.map(&:to_i)

insertion_sort(A, N)
