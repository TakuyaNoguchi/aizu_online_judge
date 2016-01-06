require 'prime'

while line = gets
  n = line.to_i
  primes = Prime.take_while { |prime| prime <= n}
  puts primes.length
end
