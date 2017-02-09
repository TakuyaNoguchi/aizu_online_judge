score_hash, s = {}, []
while line = gets
  _p, _s = line.split(',').map(&:to_i)
  break if _p.zero? && _s.zero?

  s << _s
  score_hash[_p] = _s
end

s.sort_by! { |_s| -_s }.uniq!

while q = gets
  puts s.index(score_hash[q.to_i]) + 1
end
