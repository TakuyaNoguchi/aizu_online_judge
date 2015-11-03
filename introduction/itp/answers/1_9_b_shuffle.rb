while cards = gets.chomp
  break if cards == '-'

  m = gets.to_i

  m.times do
    h = gets.to_i

    cards = cards[h..-1] + cards[0...h]
  end

  puts cards
end
