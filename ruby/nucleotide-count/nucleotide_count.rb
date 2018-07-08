class Nucleotide

  def initialize(text)
    @text = text.split('')
  end

  def self.from_dna(text)
    raise ArgumentError, 'Argument just can contain A,T,C or G characters' if text =~ /[^ATCG]/
    new(text)
  end

  def count(letter)
    count = 0
    @text.each { |nucleotide|  count += 1 if nucleotide == letter}
    count
  end

  def histogram
    counts = {'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0}
    @text.each { |nucleotide|  counts[nucleotide] = count(nucleotide)}
    counts
  end

end
