gets.to_i.times do
  out = 0
  point = 0
  runner = 0

  loop do
    case gets.chomp
    when 'HIT'
      runner += 1

      if runner > 3
        runner -= 1
        point += 1
      end
    when 'OUT'
      out += 1
    when 'HOMERUN'
      point += 1 + runner
      runner = 0
    end

    break if out == 3
  end

  puts point
end
