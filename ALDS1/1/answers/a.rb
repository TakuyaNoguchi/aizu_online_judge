class InsertionSort
  def self.execute(a, n)
    puts a.join(' ')

    1.upto(n - 1) do |i|
      v, j = a[i], i - 1

      while j >= 0 && a[j] > v
        a[j + 1] = a[j]
        j -= 1
      end

      a[j + 1] = v
      puts a.join(' ')
    end
  end
end

if $PROGRAM_NAME == __FILE__
  n = gets.to_i
  InsertionSort.execute(gets.split.map(&:to_i), n)
end