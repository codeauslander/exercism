class Series

  attr_reader :digits

  def initialize(digits)
    @digits = digits.to_s.chars.map(&:to_i)
  end

  def slices(size)
    raise ArgumentError if size > digits.size
    digits.each_cons(size).to_a.map { |slice| slice.join("")  }
  end

end

module BookKeeping
  VERSION = 1
end