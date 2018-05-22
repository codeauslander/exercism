class Series

  def initialize(number)
    @serie = number
  end

  def slices(number)
    length = @serie.length

    raise ArgumentError.new("amount of numbers lower than slice size") if number > length

    serie = []
    index = 0

    length.times do 
      inner_index = 0
      digits = ""
      section = 0

      while inner_index < number
        section = inner_index + index

        digits += @serie[section] if section < length
        inner_index += 1
      end
      serie << digits if digits.length == number

      index += 1
    end

    serie
  end

end

module BookKeeping
  VERSION = 1
end