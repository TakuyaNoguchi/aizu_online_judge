s = gets.to_i

min, sec = s.divmod(60)
hour, min = min.divmod(60)

print "#{hour}:#{min}:#{sec}\n"
