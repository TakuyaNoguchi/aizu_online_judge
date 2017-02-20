puts readlines.map(&:chomp).select { |word| word == word.reverse }.size
