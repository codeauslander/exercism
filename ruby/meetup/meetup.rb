require 'date'

class Meetup

  DAYS = { first: 0, second: 1, third: 2, fourth: 3, fifth: 4, last: -1, teenth: 12, twenty: 20 }
  
  def initialize(month, year)
    @month = month
    @year = year

    start = Date.new(@year, @month, 1)
    final = Date.new(@year, @month, -1)
    @calendar = (start..final)

  end

  def day(weekday, position)
    match_weekdays = @calendar.select { |date| date.send("#{weekday}?") }
    if DAYS[position]
      if( DAYS[position] < DAYS[:teenth] )
        return match_weekdays[DAYS[position]]
      else 
        return match_weekdays.select { |date| date.mday > DAYS[:teenth] && date.mday < DAYS[:twenty]}.first
      end  
    end  
    nil
  end

end

module BookKeeping
  VERSION = 1
end