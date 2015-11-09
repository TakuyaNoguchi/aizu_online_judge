class Dice
  def initialize(string)
    @dice_value = string.split.map(&:to_i)
  end

  def roll(operates)
    operate_ary = operates.chomp.split('')

    while operate = operate_ary.shift
      case operate
      when "N"
        tmp = @dice_value[0]
        @dice_value[0] = @dice_value[1]
        @dice_value[1] = @dice_value[5]
        @dice_value[5] = @dice_value[4]
        @dice_value[4] = tmp
      when "S"
        tmp = @dice_value[0]
        @dice_value[0] = @dice_value[4]
        @dice_value[4] = @dice_value[5]
        @dice_value[5] = @dice_value[1]
        @dice_value[1] = tmp
      when "W"
        tmp = @dice_value[0]
        @dice_value[0] = @dice_value[2]
        @dice_value[2] = @dice_value[5]
        @dice_value[5] = @dice_value[3]
        @dice_value[3] = tmp
      when "E"
        tmp = @dice_value[0]
        @dice_value[0] = @dice_value[3]
        @dice_value[3] = @dice_value[5]
        @dice_value[5] = @dice_value[2]
        @dice_value[2] = tmp
      end
    end

    print_result
  end

  def print_result
    puts @dice_value[0]
  end
end

dice = Dice.new(gets.chomp)
dice.roll(gets)
