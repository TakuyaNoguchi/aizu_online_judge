this_month = []
while (input = gets) && input != "\n"
  this_month << input.split(',').map(&:to_i).first
end

last_month = []
while input = gets
  last_month << input.split(',').map(&:to_i).first
end

targets = (this_month & last_month).sort
targets.each do |c|
  puts "#{c} #{this_month.count(c) + last_month.count(c)}"
end
