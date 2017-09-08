indexes = readlines.map { |l|
  w, p = l.chomp.split
  [w, p.to_i]
}

indexes_table = Hash.new { |h, k| h[k] = [] }
indexes.each { |w, p| indexes_table[w] << p }
indexes_table.keys.sort.each do |i|
  puts "#{i}\n#{indexes_table[i].sort.join(' ')}"
end