class Bob

  def self.hey(remark)

    remark = remark.strip
    return 'Whoa, chill out!' if remark == remark.upcase && remark.count("a-zA-Z") > 0
    return 'Sure.' if remark[-1] =='?' 
    return 'Whatever.' if remark.length > 0
    return 'Fine. Be that way!'
    
  end

end

module BookKeeping
  VERSION = 1
end
