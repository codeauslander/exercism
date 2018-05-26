class Trinary
  def initialize(trinary)
    @trinary = trinary
  end
  def to_decimal 
    return 0 if @trinary.to_i == 0

    trinary = @trinary.split("")
    potency = trinary.length - 1
    sum = 0

    trinary.each do |number| 
      number = number.to_i
      return 0 if number > 2 || number < 0

      sum += number * (3 ** potency)
      potency -= 1
    end

    sum
  end
end

module BookKeeping
  VERSION = 1
end