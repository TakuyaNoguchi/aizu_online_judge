words = gets.chomp.split.map(&:downcase)
word_freq_hash = Hash.new(0)

words.each do |word|
  word_freq_hash[word] += 1
end

most_freq_word = word_freq_hash.max_by { |_, val| val }[0]
longest_word = word_freq_hash.max_by { |key, _| key.length }[0]

puts "#{most_freq_word} #{longest_word}"
