hash = Hash.new(0)

while line = gets
  alphabets = line.downcase.tr('^a-z', '')

  alphabets.chars do |char|
    hash[char] += 1
  end
end

('a'..'z').each do |char|
  puts "#{char} : #{hash[char]}"
end
