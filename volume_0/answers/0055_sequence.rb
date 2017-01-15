readlines.map(&:to_f).each do |input_num|
  sequence = [input_num]
  2.upto(10) do |i|
    if i.even?
      sequence.push(sequence[i - 2] * 2)
    else
      sequence.push(sequence[i - 2] / 3)
    end
  end

  printf "%.8f\n", sequence.inject(&:+)
end
