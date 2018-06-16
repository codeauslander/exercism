class Clock
 
  def initialize(hours,minutes)
    @hours = hours
    @minutes = minutes
  end

  def self.at(hours,minutes) 
    new(hours, minutes)
  end

  def convert(hours, minutes)
    seconds = ( hours * 3600 ) + ( minutes * 60 )
    @hours = (seconds / 3600) % 24
    @minutes = (seconds / 60 ) % 60
  end

  def to_s
    convert(@hours,@minutes)
    "#{'%02d' % @hours}:#{'%02d' % @minutes}"
  end

  def +(minutes)
   @minutes += minutes
   self
  end

  def ==(clock)
    to_s == clock.to_s
  end
end

module BookKeeping
  VERSION = 2
end