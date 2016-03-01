num_count = Hash.new(0)

while line = gets
  num_count[line.to_i] += 1
end

max_count = num_count.max_by { |_, val| val }[1]
num_count.select { |_, val|  val == max_count }
  .sort_by { |ary| ary[0] }.each { |ary| puts ary[0] }
