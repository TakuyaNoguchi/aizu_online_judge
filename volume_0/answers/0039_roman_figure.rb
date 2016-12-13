table = {
  "I" => 1,
  "V" => 5,
  "X" => 10,
  "L" => 50,
  "C" => 100,
  "D" => 500,
  "M" => 1000
}

romans = "IVXLCDM"
last_index = romans.length - 1
regexp = romans.chars.map.with_index do |roman, index|
  next if index == last_index

  "#{roman}[#{romans[(index + 1)..-1]}]"
end.compact.join('|')

while input = gets
  input.chomp!
  sum = 0

  loop do
    replaced = input.sub!(/(#{regexp})/o) do |romans|
      sum += table[romans[1]] - table[romans[0]]
      nil
    end

    break unless replaced
  end

  input.each_char do |roman|
    sum += table[roman]
  end

  puts sum
end
