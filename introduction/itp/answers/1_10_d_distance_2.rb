n = gets.to_i
x_vec = gets.split.map(&:to_i)
y_vec = gets.split.map(&:to_i)

p_1 = x_vec.zip(y_vec).inject(0) { |sum, (x, y)| sum + (x - y).abs }
p_2 = Math.sqrt(x_vec.zip(y_vec).inject(0) { |sum, (x, y)| sum + ((x - y).abs)**2 })
p_3 = Math.cbrt(x_vec.zip(y_vec).inject(0) { |sum, (x, y)| sum + ((x - y).abs)**3 })
p_inf = x_vec.zip(y_vec).map { |(x, y)| (x - y).abs }.max

printf("%7.6f\n%7.6f\n%7.6f\n%7.6f\n", p_1, p_2, p_3, p_inf)
