class Phrase
  def initialize(sentence)
    @words = sentence.gsub(/\s'|'\s/," ").split(/[^'\w]+/).map{|word| word.downcase}
  end
  def word_count
    @words.map { |word|  [word, @words.count(word)]  }.to_h
  end
end

module BookKeeping
  VERSION = 1
end