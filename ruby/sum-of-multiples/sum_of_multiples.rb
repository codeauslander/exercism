class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples   
  end
  def to(number)
    result = []
    index = 1
    (number - 1).times do
      @multiples.each do |multiple|
        result << index if index % multiple == 0
      end
      index += 1
    end
    result = result.uniq
    return result.sum
  end
end
module BookKeeping
  VERSION = 2
end