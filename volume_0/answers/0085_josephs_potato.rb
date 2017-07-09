readlines.each do |line|
  n, m = line.chomp.split.map(&:to_i)
  break if n.zero? && m.zero?

  members = [*1..n]
  delete_member_idx = m - 1

  loop do
    members.delete_at(delete_member_idx)

    if members.size == 1
      puts members.first
      break
    end

    delete_member_idx = (delete_member_idx + m - 1) % members.size
  end
end
