class ETL
  def self.transform(old)
    hash = Hash.new
    index = 1
    old.length.times do |point|
      value = old.keys[point]
      keys = old[value]
      keys.each do |letter|
        hash[letter.downcase] = value
      end
    end
    hash  
  end
end
module BookKeeping
  VERSION = 1
end