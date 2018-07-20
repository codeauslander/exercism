
class Hexadecimal

  VALUES = { 
    "0" => 0, "1" => 1, "2" => 2, "3" => 3, 
    "4" => 4, "5" => 5, "6" => 6, "7" => 7, 
    "8" => 8, "9" => 9, "a" => 10, "b" => 11, 
    "c" => 12, "d" => 13, "e" => 14, "f" => 15 
  } 

  def initialize(number)
    unless number.split('').all? { |value| VALUES[value]}
      @number = [0]
    else
      @number = number.split('').reverse_each.map { |value| VALUES[value]} 
    end
  end

  def to_decimal()
    @number.each.with_index.inject(0) { |accumulator,(value,index)|  accumulator += value * (16 ** index) }
  end

end
