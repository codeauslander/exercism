class Complement
  DNA_TO_RNA = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
  def self.of_dna(dna_complement)
    rna_complement = ""

    dna_complement.length.times do |index|

      nucleotide = dna_complement[index]
      return '' if !DNA_TO_RNA[nucleotide]
      rna_complement += DNA_TO_RNA[nucleotide] 

    end

    rna_complement
  end
end

module BookKeeping
  VERSION = 4
end