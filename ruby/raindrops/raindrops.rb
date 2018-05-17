class Raindrops
  def self.convert(number)
    number % 105 == 0 ? "PlingPlangPlong" : number % 35 == 0 ? "PlangPlong" : number % 21 == 0 ? "PlingPlong" : number % 15 == 0 ? "PlingPlang" : number % 3 == 0 ? "Pling" : number % 5 == 0 ? "Plang" : number % 7 == 0 ? "Plong" : number.to_s
  end
end

module BookKeeping
  VERSION = 3
end