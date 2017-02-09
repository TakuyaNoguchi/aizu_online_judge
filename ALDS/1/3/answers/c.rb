gets.to_i
result = []

readlines.each do |command|
  command, num = command.chomp.split

  case command
  when 'insert'
    result.unshift(num)
  when 'delete'
    index = result.find_index(num)
    result.delete_at(index) if index
  when 'deleteFirst'
    result.shift
  when 'deleteLast'
    result.pop
  end
end

puts result.join(' ')
