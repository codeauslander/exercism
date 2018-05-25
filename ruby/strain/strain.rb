class Array
  def keep
    array = []
    each do |item|
      array << item if yield(item)
    end
    array
  end
  def discard
    array = []
    each do |item|
      array << item unless yield(item)
    end
    array
  end
end
module BookKeeping
  VERSION = 1
end