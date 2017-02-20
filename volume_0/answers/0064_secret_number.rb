puts readlines.map(&:chomp).map { |line| line.scan(/\d+/) }
      .flatten.map(&:to_i).inject(&:+)
