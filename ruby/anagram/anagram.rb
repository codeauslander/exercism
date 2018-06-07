class Anagram
  def initialize(anagram)
    @anagram = anagram.downcase 
  end
  def match(word_list)
    anagram = @anagram.split("").sort
    word_list.select { |word|  @anagram != word.downcase && anagram  == word.downcase.split("").sort }
  end
end
module BookKeeping
  VERSION = 2
end