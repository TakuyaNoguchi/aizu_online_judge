while input = gets
  hand = input.split(',').map(&:to_i).group_by { |num| num }.to_h

  if hand.keys.length == 2
    if hand.values.map(&:length).include?(4)
      puts 'four card'
    else
      puts 'full house'
    end
  elsif hand.keys.length == 5
    sorted_nums = hand.keys.sort
    if sorted_nums.include?(1)
      start_num = 1
    else
      start_num = sorted_nums[0]
    end
    straight_hand = [start_num, *sorted_nums[1]..(sorted_nums[1] + 3)]

    if sorted_nums == straight_hand
      puts 'straight'
    else
      puts 'null'
    end
  elsif hand.keys.length == 3
    if hand.values.map(&:length).include?(3)
      puts 'three card'
    else
      puts 'two pair'
    end
  elsif hand.keys.length == 4
    puts 'one pair'
  else
    puts 'null'
  end
end
