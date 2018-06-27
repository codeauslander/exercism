
class RailFenceCipher

 def self.encode(text,fences)
  rail_fence_cipher = ""
  index = 0
  count = 0
  (text.length * fences).times do 
    if count < fences
      puts "#{rail_fence_cipher} - #{text[index]} - #{count} - #{fences}"
      rail_fence_cipher += text[index]
      index += 1
    end
    count += 1
    count = 0 if count == fences + 1
  end
  rail_fence_cipher
 end

end



module BookKeeping
  VERSION = 4
end