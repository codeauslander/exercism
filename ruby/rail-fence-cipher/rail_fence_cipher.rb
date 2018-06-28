
class RailFenceCipher

 def self.encode(text,fences)
  rail_fence_cipher = ""
  index = 0
  start = index
  count = 0
  text_length = text.length
  size = text_length * fences


  loop do 
    puts "#{count}"
    if count % fences == 0 && index < text_length
      puts "index: #{index} - #{text[index]} - count: #{count} - fences: #{fences} - size: #{size}"
      rail_fence_cipher += text[index]
      count = 0
    end
    count += 1
    index += 1 
    if index == text_length
      index = start + 1
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

p RailFenceCipher.encode('12345678', 2)