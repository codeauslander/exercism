class Acronym
  def self.abbreviate(text)
    acronym = ''
    text.split(/\s|-/).each { |word|  acronym += word[0]}
    acronym.upcase 
  end
end
module BookKeeping
  VERSION = 4
end