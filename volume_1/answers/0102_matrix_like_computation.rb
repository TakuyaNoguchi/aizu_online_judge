require 'matrix'

loop do
  n = gets.to_i
  break if n.zero?

  printf_format = "%5d" * (n + 1) + "\n"
  sums = Vector[*([0] * (n + 1))]
  n.times do
    a = gets.split.map(&:to_i)
    a.push(a.inject(&:+))
    printf printf_format, *a

    sums += Vector[*a]
  end

  printf printf_format, *sums
end
