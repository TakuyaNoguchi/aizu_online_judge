MAX = 120 * 60

def print_remaining_time(diff)
  min, ans_second = diff.divmod(60)
  ans_hour, ans_minite = min.divmod(60)

  printf "%02d:%02d:%02d\n", ans_hour, ans_minite, ans_second
end

readlines.each do |line|
  t, h, s = line.chomp.split.map(&:to_i)
  break if t == -1 && h == -1 && s == -1

  second = t * 60 * 60 + h * 60  + s

  print_remaining_time(MAX - second)
  print_remaining_time((MAX - second) * 3)
end
