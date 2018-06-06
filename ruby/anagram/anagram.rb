class Anagram
  def initialize(word)
    @anagram = word.downcase.split("")
    p @anagram
  end
  def match(word_list)
    
    p word_list.select{|word| anagram? word } 
    word_list.select{|word| anagram? word } 

  end
  def anagram?(word)
    return false if word.uniq.length != @anagram.uniq.length
    word = word.downcase.split("")

    count = 0
    while  count < word.length
      return false unless word.include? @anagram[index]
      word.delete
    end
    
    return true
  end
end

module BookKeeping
  VERSION = 2
end