class Sieve
  def initialize(number)
    @number = number
    @numbers = (2..@number).to_a
  end

  def primes
    @numbers.each do |number|
      @numbers.map { |n| @numbers.delete(n) if (n % number == 0) && (n != number)  }
    end
    @numbers
  end
end

module BookKeeping
  VERSION = 1
end