s = gets.chomp
p = gets.chomp

p_length = p.length
input_string = s + s[0..(p_length - 2)]

success = false

input_string.split('').each_cons(p_length) do |word|
  if word.join == p
    success = true
  end
end

if success
  puts 'Yes'
else
  puts 'No'
end
