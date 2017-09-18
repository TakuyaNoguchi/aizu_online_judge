class Fixnum
  def /(num)
    fdiv(num).to_i
  end
end

gets.to_i.times do
  puts eval(gets.chomp.chop)
end