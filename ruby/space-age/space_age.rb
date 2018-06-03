class SpaceAge 
  def initialize(secs)
    @secs = secs
  end

  def years(period = 1) 
    ((@secs * 1000 / (31557600 * period) * 1000) ).to_f / 1000000
  end 

  def on_earth
    years
  end

  def on_mercury
    years(0.2408467)
  end

  def on_venus
    years(0.61519726)
  end

  def on_mars
    years(1.8808158)
  end

  def on_jupiter
    years(11.862615)
  end

  def on_saturn
    years(29.447498)
  end

  def on_uranus
    years(84.016846)
  end

  def on_neptune
    years(164.79132)
  end
end

module BookKeeping
  VERSION = 1
end