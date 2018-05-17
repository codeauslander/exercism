
class Prime

  def self.nth(nth_prime)

    raise ArgumentError.new('Enter a number higher than 0') if nth_prime < 1
    primes  =  [2, 3]
    number = 5
    while   primes.length < nth_prime
      primes << number unless primes.any? { |prime| number % prime == 0 } 
      number += 2
    end
    primes[nth_prime -1] 
    
  end

end

module BookKeeping
  VERSION = 1
end