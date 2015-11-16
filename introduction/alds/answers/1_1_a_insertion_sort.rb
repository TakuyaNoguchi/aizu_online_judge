def insertion_sort(a, n)
  puts a.join(' ')

  1.upto(n - 1) do |i|
    v = a[i]
    j = i - 1

    while j >= 0 and a[j] > v
      a[j + 1] = a[j]
      j -= 1
    end

    a[j + 1] = v

    puts a.join(' ')
  end
end

N, A = gets.to_i, gets.split.map(&:to_i)

insertion_sort(A, N)
