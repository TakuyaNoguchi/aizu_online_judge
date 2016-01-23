while line = gets
  sentence = line.chomp
  condition = -> {
    !sentence.include?('the') &&
     !sentence.include?('this') &&
     !sentence.include?('that')
  }

  while condition.call
    sentence = sentence.chars.map { |char|
      if ?a <= char && char <= ?z
        if char == ?z
          ?a
        else
          char.succ
        end
      else
        char
      end
    }.join('')
  end

  puts sentence
end
