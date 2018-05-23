class Series

  def initialize(number)
    @serie = number
  end

  def slices(size)
    raise ArgumentError if size > @serie.size
    (0..(@serie.size - size))
        .map {|index| @serie[index..(index + size - 1)]}
  end

end

module BookKeeping
  VERSION = 1
end