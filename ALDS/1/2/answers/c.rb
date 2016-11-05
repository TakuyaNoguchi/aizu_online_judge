def bubble_sort(c, n)
  0.upto(n-1) do |i|
    (n-1).downto(i+1) do |j|
      if c[j][1].to_i < c[j-1][1].to_i
        c[j], c[j-1] = c[j-1], c[j]
      end
    end
  end

  puts c.join(' ')

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

def check_stable(c, before_order, targets)
  after_order = Hash.new { |h, k| h[k] = [] }

  c.each do |elem|
    if targets.include?(elem[1])
      after_order[elem[1]] << elem[0]
    end
  end

  diff = false
  targets.each do |target|
    if before_order[target] != after_order[target]
      diff = true
      break
    end
  end

  puts diff ? 'Not stable' : 'Stable'
end


N = gets.to_i
C = gets.split

before_order = Hash.new { |h, k| h[k] = [] }
C.each do |elem|
  before_order[elem[1]] << elem[0]
end
before_order.select! { |k, v| v.length >= 2 }
targets = before_order.keys

check_stable(bubble_sort(C.dup, N), before_order, targets)
check_stable(selection_sort(C.dup, N), before_order, targets)
