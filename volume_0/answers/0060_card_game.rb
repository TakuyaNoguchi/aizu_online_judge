ALL_CARDS = (1..10).to_a

readlines.each do |line|
  understood_cards = line.chomp.split.map(&:to_i)
  my_cards_sum = understood_cards.take(2).inject(&:+)
  remaining_cards = ALL_CARDS - understood_cards
  under_20 = remaining_cards.select { |n| n + my_cards_sum <= 20 }

  if (under_20.size.to_f / remaining_cards.length) * 100 >= 50
    puts 'YES'
  else
    puts 'NO'
  end
end

