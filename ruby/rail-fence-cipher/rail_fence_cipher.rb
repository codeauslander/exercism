
class RailFenceCipher

 def self.encode(text,fences)
  return '' if text.strip == ''
  rail_fence_cipher = ""
  index = 0
  start = 1
  count = 0
  text_length = text.length
  size = text_length * fences
  rail_fence_cipher += text[0]

  loop do 
    puts "#{count}"
    if count - fences == 1 && index < text_length
      puts "index: #{index} - #{text[index]} - count: #{count} - fences: #{fences} - size: #{size}"
      rail_fence_cipher += text[index]
      count = 0
    end
    count += 1
    index += 1 
    if index == text_length
      
      index = start
      start += 1
      
    end
    break if start == fences
  end

  puts "index: #{index} - #{text[index]} - count: #{count} - fences: #{fences} - size: #{size}" 
  rail_fence_cipher
 end

end



module BookKeeping
  VERSION = 4
end

# p RailFenceCipher.encode('', 4)
# p RailFenceCipher.encode('12345678', 2)
# p RailFenceCipher.encode('One rail, only one rail', 1)
p RailFenceCipher.encode('WEAREDISCOVEREDFLEEATONCE', 3)