class RunLengthEncoding
  def self.encode(word)
    count = 1
    encode = ""
    word.split("").length.times do |index|
      count += 1 if word[index] == word[index + 1]
      if word[index] != word[index + 1]
        count = "" if count == 1
        encode += "#{count}#{word[index]}" 
        count = 1
      end
    end
    encode
  end
  def self.decode(word)
    decode = ""
    number = ""
    word.split("").length.times do |index|
      if word[index].to_i > 0
        number += word[index]
      else
        number = "1" if number.to_i == 0
        section = word[index] * number.to_i 
        decode += section
        number = ""
      end
    end
    decode
  end
end
module BookKeeping
  VERSION = 3
end