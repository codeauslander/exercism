class Hamming
  def self.compute(word_1,word_2)
    if word_1.length != word_2.length
       raise ArgumentError.new("Different size of words")
    end
    count = 0
    word_1.length.times do |index|
      if word_1[index] != word_2[index]
        count += 1
      end
    end
    count
  end
end

module BookKeeping
  VERSION = 3
end