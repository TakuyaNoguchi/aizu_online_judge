def print_class(weight)
  if weight <= 48.00
    puts 'light fly'
  elsif weight <= 51.00
    puts 'fly'
  elsif weight <= 54.00
    puts 'bantam'
  elsif weight <= 57.00
    puts 'feather'
  elsif weight <= 60.00
    puts 'light'
  elsif weight <= 64.00
    puts 'light welter'
  elsif weight <= 69.00
    puts 'welter'
  elsif weight <= 75.00
    puts 'light middle'
  elsif weight <= 81.00
    puts 'middle'
  elsif weight <= 91.00
    puts 'light heavy'
  else
    puts 'heavy'
  end
end

readlines.map(&:to_f).each do |weight|
  print_class(weight)
end
