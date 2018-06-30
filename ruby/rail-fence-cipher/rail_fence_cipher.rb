
class RailFenceCipher

 def self.encode(text,number)
  return text if number == 1
  text = text.gsub(/[^a-zA-Z]/, '')
  p text


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
    puts "#{index}"
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
    # p fences[index].join
    result += fences[index].join
    index += 1
  end

  result
 end



end



# p RailFenceCipher.encode('', 4)
# p RailFenceCipher.encode('12345678', 2)
# p RailFenceCipher.encode('One rail, only one rail', 1)

# p RailFenceCipher.encode('WEAREDISCOVEREDFLEEATONCE', 3)
# p 'WECRLTEERDSOEEFEAOCAIVDEN'