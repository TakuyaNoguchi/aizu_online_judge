OPERATORS = %w(+ - *)
FORMULAS = ['%d %c %d %c %d %c %d',
            '(%d %c %d) %c %d %c %d',
            '%d %c (%d %c %d) %c %d',
            '%d %c %d %c (%d %c %d)',
            '((%d %c %d) %c %d) %c %d',
            '(%d %c (%d %c %d)) %c %d',
            '(%d %c %d) %c (%d %c %d)',
            '%d %c ((%d %c %d) %c %d)',
            '%d %c (%d %c (%d %c %d))']

loop do
  nums = gets.split.map(&:to_i)
  break if nums.all?(&:zero?)

  catch :next do
    nums.permutation do |num|
      OPERATORS.product(OPERATORS, OPERATORS).each do |op|
        variables = [num[0], op[0], num[1], op[1], num[2], op[2], num[3]]

        FORMULAS.each do |formula|
          expression = formula % variables

          if eval(expression) == 10
            puts expression

            throw :next
          end
        end
      end
    end

    puts 0
  end
end
