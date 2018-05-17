class Gigasecond

  GIGASECOND = 1000000000

  def self.from(time_utc)
    time_utc + GIGASECOND
  end

end

module BookKeeping

  VERSION = 6
  
end