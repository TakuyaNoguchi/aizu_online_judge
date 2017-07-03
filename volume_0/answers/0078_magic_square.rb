readlines.map(&:to_i).each do |n|
  break if n.zero?

  result = Array.new(n) { Array.new(n) }
  inserted_index = { x: n / 2, y:  n / 2 + 1 }
  result[inserted_index[:y]][inserted_index[:x]] = 1

  2.upto(n * n) do |i|
    next_index = { x: inserted_index[:x] + 1, y: inserted_index[:y] + 1 }

    # 右にはみ出した場合
    if next_index[:x] >= n
      next_index[:x] = 0
    end

    # 下にはみ出した場合
    if next_index[:y] >= n
      next_index[:y] = 0
    end

    if result[next_index[:y]][next_index[:x]].nil?
      result[next_index[:y]][next_index[:x]] = i
      inserted_index = next_index

      next
    end

    next_index = { x: next_index[:x] - 1, y: next_index[:y] + 1 }

    # 左にはみ出した場合
    if next_index[:x] < 0
      next_index[:x] = n - 1
    end

    # 下にはみ出した場合
    if next_index[:y] >= n
      next_index[:y] = 0
    end

    result[next_index[:y]][next_index[:x]] = i
    inserted_index = next_index
  end

  result.each do |row|
    printf "%4d" * n + "\n",  *row
  end
end
