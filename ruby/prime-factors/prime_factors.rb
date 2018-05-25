class PrimeFactors
  def self.for(number)
    divisor = 2
    prime_factors = []
    first_even_prime = true
    while (number > 1)
      if number % divisor == 0 
       number = number / divisor
       prime_factors << divisor 
      else
        if first_even_prime
          divisor += 1
          first_even_prime = false
        else
          divisor += 2
        end
      end
    end
    prime_factors
  end
end
module BookKeeping
  VERSION = 1
end