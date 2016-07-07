$stdin.readlines.map(&:to_i).each do |weight|
  result = []

  weight.to_s(2).reverse.chars.each_with_index do |bin_num, index|
    result << 2 ** index if bin_num == '1'
  end

  puts result.join(' ')
end
