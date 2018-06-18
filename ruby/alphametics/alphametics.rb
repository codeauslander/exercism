class Alphametics
  #no ended
  def self.solve(input) 
    input.gsub!('^', '**')
    letters = input.scan(/[A-Z]/).uniq

    (0..9).to_a.permutation(letters.count).each do |digits|
      map = Hash[*(letters.zip(digits).flatten)]
      p map
      substitued = input.gsub(/[A-Z]/, map)
      p substitued
      if substitued.match(/(\s|\A)0/)
        puts "match -> #{substitued}"
        next
      end
      puts "match ====> #{substitued}"
      return map if eval(substitued)
    end
    {}
  end

end

module BookKeeping
  VERSION = 4
end