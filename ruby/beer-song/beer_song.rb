class BeerSong
  AMOUNT = 99

  def verse(number = AMOUNT)

    case number
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "#{number} bottle of beer on the wall, #{number} bottle of beer.\n" "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 2
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" "Take one down and pass it around, #{number-1} bottle of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" "Take one down and pass it around, #{number-1} bottles of beer on the wall.\n"
    end
    
  end

  def verses(start = AMOUNT, finish = 0)
    start.downto(finish).map {|line| verse(line)}.join("\n")
  end
end

module BookKeeping
  VERSION = 3
end