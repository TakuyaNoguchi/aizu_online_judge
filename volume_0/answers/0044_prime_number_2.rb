require 'prime'

while input = gets
  n = input.to_i

  puts "#{Prime.each(n - 1).to_a.last} #{Prime.each.find { |p| p > n }}"
end
