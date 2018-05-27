class BeerSong
def verse(number)
    if number == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif number == 1
      "#{number} bottle of beer on the wall, #{number} bottle of beer.\n" "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif number == 2
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" "Take one down and pass it around, #{number-1} bottle of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" "Take one down and pass it around, #{number-1} bottles of beer on the wall.\n"
    end
  end

  def verses(start, finish)
    song = []
    (finish..start).to_a.reverse.each do |line|
      song << verse(line)
    end
    song.join("\n")
  end
end

module BookKeeping
  VERSION = 3
end