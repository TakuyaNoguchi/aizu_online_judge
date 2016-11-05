def bubble_sort(c, n)
  0.upto(n-1) do |i|
    (n-1).downto(i+1) do |j|
      if c[j][1].to_i < c[j-1][1].to_i
        c[j], c[j-1] = c[j-1], c[j]
      end
    end
  end

  puts c.join(' ')
  puts 'Stable'

  c
end

def selection_sort(c, n)
  0.upto(n-1) do |i|
    min_j = i
    i.upto(n-1) do |j|
      if c[j][1].to_i < c[min_j][1].to_i
        min_j = j
      end
    end

    c[i], c[min_j] = c[min_j], c[i] if i != min_j
  end

  puts c.join(' ')

  c
end

N = gets.to_i
C = gets.split

if bubble_sort(C.dup, N) == selection_sort(C.dup, N)
  puts 'Stable'
else
  puts 'Not stable'
end
