class Scrabble

  VALUES = {
    1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
    2 => ['D', 'G'],
    3 => ['B', 'C', 'M', 'P'],
    4 => ['F', 'H', 'V', 'W', 'Y'],
    5 => ['K'],
    8 => ['J', 'X'],
    10 => ['Q', 'Z']
  }

  def initialize(word = '')
    @word = word == nil ? [''] : word.upcase.strip.split('') 
  end

  def score(word = @word)
    points = 0
    word.each do |letter|
      points += value(letter)
    end
    points
  end

  def self.score(word)
    word = word == nil ? [''] : word.upcase.strip.split('') 
    points = 0
    word.each do |letter|
      points += value(letter)
    end
    points
  end

  def value(letter)
    VALUES.keys.each do |key|
      return key if VALUES[key].index(letter)
    end
    0
  end

  def self.value(letter)
    VALUES.keys.each do |key|
      return key if VALUES[key].index(letter)
    end
    0
  end
end
module BookKeeping
  VERSION = 3
end