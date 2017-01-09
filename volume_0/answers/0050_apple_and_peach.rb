puts gets.chomp.gsub(/apple|peach/) { |matched|
  if matched == 'apple'
    'peach'
  else
    'apple'
  end
}
