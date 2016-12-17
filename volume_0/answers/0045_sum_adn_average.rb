inputs = readlines.map { |str| str.split(',').map(&:to_i) }
puts inputs.inject(0) { |sum, ary| sum +  (ary[0] * ary[1]) }
puts (inputs.inject(0) { |sum, ary| sum + ary[1] } / inputs.length.to_f).round
