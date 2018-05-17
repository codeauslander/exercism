class Array
    def accumulate 
      array = []
      self.each do |item|
        array << yield(item)
      end
      array
    end
end

module BookKeeping
  VERSION = 1
end