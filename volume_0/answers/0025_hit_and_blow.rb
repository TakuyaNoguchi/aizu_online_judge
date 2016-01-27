while line = gets
  a_ary, b_ary = line.chomp.split, gets.chomp.split

  hit, blow = 0, 0
  not_hit_a_ary, not_hit_b_ary = [], []

  a_ary.zip(b_ary) do |a, b|
    if a == b
      hit += 1
    else
      not_hit_a_ary << a
      not_hit_b_ary << b
    end
  end

  blow = (not_hit_a_ary & not_hit_b_ary).length

  print "%d %d\n" % [hit, blow]
end
