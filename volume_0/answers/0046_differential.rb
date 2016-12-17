puts readlines.map(&:to_f).minmax.reverse.inject(&:-)
