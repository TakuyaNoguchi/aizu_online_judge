require 'date'

DAY_WEEK = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)

loop do
  month, day = gets.split.map(&:to_i)
  break if month.zero? && day.zero?

  date = Date.new(2004, month, day)
  puts DAY_WEEK[date.wday]
end
