# 縦横で3つ揃ってないか確認
def completed_char(board)
  completed_line = board.find do |a, b, c|
    a != 's' && a == b && b == c
  end

  return completed_line.first if completed_line

  completed_line = board.transpose.find do |a, b, c|
    a != 's' && a == b && b == c
  end

  completed_line ? completed_line.first : nil
end

readlines.each do |line|
  board = line.chomp.chars.each_slice(3).map.to_a

  if char = completed_char(board)
    puts char
    next
  end

  # 斜めで3つ揃ってないか確認
  unless board[1][1] == 's'
    if (board[0][0] == board[1][1] && board[1][1] == board[2][2]) or
       (board[2][0] == board[1][1] && board[1][1] == board[0][2])
      puts board[1][1]
      next
    end
  end

  puts 'd'
end
