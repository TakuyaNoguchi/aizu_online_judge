N = gets.to_i

N.times do
  data = gets.split.map(&:to_i)

  b, c = [], []
  failure = false

  data.each do |num|
    if b.empty? || num > b[0]
      b.unshift(num)
    else
      if c.empty? || num > c[0]
        c.unshift(num)
      else
        failure = true
        break
      end
    end
  end

  if failure
    puts 'NO'
  else
    puts 'YES'
  end
end
