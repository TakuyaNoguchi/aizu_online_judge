while num = gets.to_i
  break if num.zero?

  sum = 0
  until num.zero?
    sum += num % 10
    num /= 10
  end

  puts sum
end
