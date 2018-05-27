class Binary
  class << self
    def to_decimal(binary)
      array = binary.split("")
      array.each{|n|  raise ArgumentError if !(n == '0' ||  n == '1')}
      index = array.length - 1
      sum = 0
      array.length.times do |number| 
        sum += array[number].to_i * (2 ** index)
        index -= 1
      end
      sum
    end
  end
end
module BookKeeping
  VERSION = 3
end
