class PrimeFactors
  def self.for(number)
    divisor = 2
    prime_factors = []
    number.times do 
      if number % divisor == 0 
       number = number / divisor
       prime_factors << divisor 
      else
        divisor += 1
      end
    end
    prime_factors
  end
end

module BookKeeping
  VERSION = 1
end