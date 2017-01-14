require 'prime'

loop do
  n = gets.to_i
  break if n.zero?

  puts Prime.each.take(n).inject(&:+)
end
