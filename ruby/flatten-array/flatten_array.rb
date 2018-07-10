class FlattenArray

  def self.flatten(array, index = 0, list = [])

    puts "arra #{array} | index #{index} | list #{list}"
    return list if array.length == index

    if array[index] == nil
      self.flatten(array,index + 1, list)
    elsif !array[index].kind_of?(Array)
      list << array[index]
    else
      list = self.flatten(array[index],0, list)
    end
    
    self.flatten(array,index + 1, list)


  end

end

module BookKeeping
  VERSION = 1
end
