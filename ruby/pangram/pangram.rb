class Pangram

  ABC = { 'a' => true, 'b' => true, 'c' => true, 'd' => true, 'e' => true, 'f' => true, 'g' => true, 'h' => true, 'i' => true, 'j' => true, 'k' => true, 'l' => true, 'm' => true, 'n' => true, 'o' => true, 'p' => true, 'q' => true, 'r' => true, 's' => true, 't' => true, 'u' => true, 'v' => true, 'w' => true, 'x' => true, 'y' => true, 'z' => true, }

  def self.pangram?(phrase)
    phrase = phrase.downcase.gsub(/[^a-z]/, '')
    return false if phrase == ""
    phrase = phrase.split("").map { |letter| [letter,true]  }.to_h
    
    phrase.length.times do |index|   
      return false unless ABC[phrase.keys[index]]
    end

    ABC.length.times do |index|
      return false unless phrase[ABC.keys[index]]
    end

    return true
  end

end

module BookKeeping
  VERSION = 6
end