word = gets.chomp
sentence = ""

while line = gets.chomp
  break if line == 'END_OF_TEXT'

  sentence << ' ' + line
end

words = sentence.downcase.gsub(/[^a-z ]/, '').split
puts words.count(word)
