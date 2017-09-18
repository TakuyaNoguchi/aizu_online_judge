def bubble_sort(c, n)
  0.upto(n - 1) do |i|
    (n - 1).downto(i + 1) do |j|
      # 条件から同じ数字かつ違うマークのカードの入れ替えは発生しない
      c[j], c[j - 1] = c[j - 1], c[j] if c[j][1] < c[j - 1][1]
    end
  end

  @bubble_sort_result = c.dup

  puts c.join(' ')
  puts 'Stable'
end

def selection_sort(c, n)
  0.upto(n - 1) do |i|
    minj = i
    i.upto(n - 1) do |j|
      minj = j if c[j][1] < c[minj][1]
    end

    c[i], c[minj] = c[minj], c[i]
  end

  puts c.join(' ')
  puts (c == @bubble_sort_result) ? 'Stable' : 'Not stable'
end

N = gets.to_i
C = gets.chomp.split.freeze

bubble_sort(C.dup, N)
selection_sort(C.dup, N)