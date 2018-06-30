
class RailFenceCipher
  VERSION = 1
  def self.encode(text,number)
    return text if number == 1 ||
                 number > text.length

    text = text.gsub(/[^a-zA-Z]/, '')

    fences = {}
    index = 1
    number.times do 
      fences[index] = []
      index += 1
    end

    index = 1
    letter = 0
    direction = true
    text.length.times do
      fences[index] << text[letter] 
      letter += 1

      index -= 1 unless direction
      index += 1 if direction
      
      if index == number
        direction = !direction
        index = number
      end
      if index == 1
        direction = !direction
        index = 1
      end

    end

    result = ""
    index = 1
    number.times do 
      result += fences[index].join
      index += 1
    end

    result          
  end

  def self.fences_sizes(text,number)
    return text.length if number == 1 ||
                   number > text.length

    text = text.gsub(/[^a-zA-Z]/, '')

    fences = {}
    index = 1
    number.times do 
      fences[index] = []
      index += 1
    end

    index = 1
    letter = 0
    direction = true
    text.length.times do
      fences[index] << text[letter] 
      letter += 1

      index -= 1 unless direction
      index += 1 if direction
      
      if index == number
        direction = !direction
        index = number
      end
      if index == 1
        direction = !direction
        index = 1
      end
    end

    index = 1
    sizes = []
    number.times do
      sizes << fences[index].length
      index += 1
    end

    sizes
  end

  def self.decode(text,number)
    return text if number == 1 ||
                   number > text.length

    text = text.gsub(/[^a-zA-Z]/, '')

    fences = {}
    index = 1
    number.times do
      fences[index] = []
      index += 1
    end

    sizes = self.fences_sizes(text, number)

    index = 1
    letter = 0
    count = 0
    text.length.times do
      fences[index] << text[letter] 
      letter += 1
      count += 1
      if sizes[index - 1] == count 
        index += 1
        count = 0
      end
    end

    result = ""
    index = 1
    direction = true
    text.length.times do 

      result += fences[index].shift 

      index -= 1 unless direction
      index += 1 if direction
      
      if index == number
        direction = !direction
        index = number

      end
      if index == 1
        direction = !direction
        index = 1
      end

    end
    result
  end

end
