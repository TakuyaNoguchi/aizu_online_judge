blood_groups = Hash.new { |hash, key| hash[key] = 0 }

readlines.each do |inputs|
  _, blood_type = inputs.chomp.split(',')
  blood_groups[blood_type] += 1
end

['A', 'B', 'AB', 'O'].each do |blood_type|
  puts blood_groups[blood_type]
end
