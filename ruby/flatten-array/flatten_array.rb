class FlattenArray

  def self.flatten(array, index = 0, list = [])

    puts "arra #{array} | index #{index} | list #{list}"
    return list if array.length == index
    
    if array[index].kind_of?(Array)
      
      list = self.flatten(array[index],0, list)

    else
      
      list << array[index]
      self.flatten(array,index + 1, list)

    end

  end

end

module BookKeeping
  VERSION = 1
end
