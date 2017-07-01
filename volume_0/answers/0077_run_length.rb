readlines.each do |line|
  print_string = ''

  rep_count, rep_char_index = nil, nil
  line.chomp.each_char.with_index do |char, i|
    if char == '@'
      rep_char_index = i + 2
      next
    end

    if rep_char_index
      if i == rep_char_index
        print_string << char * rep_count
        rep_count, rep_char_index = nil, nil
      else
        rep_count = char.to_i
      end
    else
      print_string << char
    end
  end

  puts print_string
end
