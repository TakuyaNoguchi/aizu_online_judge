while line = gets
  # 中間試験の点数 m、期末試験の点数 f、再試験の点数 r
  m, f, r = line.split.map(&:to_i)

  break if m == -1 && f == -1 && r == -1

  exam_sum = m + f

  if m == -1 || f == -1
    puts 'F'
  elsif exam_sum >= 80
    puts 'A'
  elsif 65 <= exam_sum && exam_sum < 80
    puts 'B'
  elsif 50 <= exam_sum && exam_sum < 65
    puts 'C'
  elsif 30 <= exam_sum && exam_sum < 50
    if 50 <= r
      puts 'C'
    else
      puts 'D'
    end
  else
    puts 'F'
  end
end
