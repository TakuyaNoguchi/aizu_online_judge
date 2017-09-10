input = readlines.map(&:to_i)
n, R = input.first, input[1..-1]
minv = R[0]
maxv = R[1] - R[0]

1.upto(n - 1) do |i|
  maxv = [maxv, R[i] - minv].max
  minv = [minv, R[i]].min
end

puts maxv