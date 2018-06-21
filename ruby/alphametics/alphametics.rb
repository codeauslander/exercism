module Alphametics
  def self.solve(input)
    Equation.new(input).solve
  end
end

class Equation
  NUMBERS = [*0..9].reverse
  puts "numbers #{NUMBERS}"

  def initialize(equation)

    @equation = equation
    @leading_letters = equation.scan(/\b[A-Z]/).uniq.join
    puts "@leading_letters #{@leading_letters}"
  end

  def solve
    chars = @equation.each_char.select do |char|
      char =~ /[A-Z]/
    end.uniq
    puts "chars #{chars}"

    solution = NUMBERS.permutation(chars.size).find do |numbers|
      char_str = chars.join
      num_str = numbers.join

      leading_zeros?(char_str, num_str) && next

      left, right = @equation.split(' == ')
      left = left.split(' + ').sum { |word| convert(word, char_str, num_str) }
      right = convert(right, char_str, num_str)

      left == right
    end

    solution ? chars.zip(solution).to_h : {}
  end

  private

  def leading_zeros?(char_str, num_str)
    @leading_letters.tr(char_str, num_str).include?('0')
  end

  def convert(string, char_str, num_str)
    string.tr(char_str, num_str).to_i
  end
end

# test
def test_puzzle_with_ten_letters
    # skip
    input = 'AND + A + STRONG + OFFENSE + AS + A + GOOD == DEFENSE'
    expected = { 'A' => 5, 'D' => 3, 'E' => 4, 'F' => 7,
                 'G' => 8, 'N' => 0, 'O' => 2, 'R' => 1,
                 'S' => 6, 'T' => 9 }
    expected == Alphametics.solve(input)
end

p test_puzzle_with_ten_letters

module BookKeeping
  VERSION = 4
end