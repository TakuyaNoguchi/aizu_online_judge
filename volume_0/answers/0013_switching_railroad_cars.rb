railroad_cars = []

while line = gets
  num = line.to_i

  if num.zero?
    puts railroad_cars.pop
  else
    railroad_cars.push(num)
  end
end
