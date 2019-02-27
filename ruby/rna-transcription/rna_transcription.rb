class Complement
  def self.of_dna(dna_strand)
    return dna_strand if dna_strand.empty?

    dna_conversion_ref = {
      "G" => "C",
      "C" => "G",
      "T" => "A",
      "A" => "U"
    }

    dna_strand.chars.map do |nucleotide|
      dna_conversion_ref[nucleotide]
    end.join
  end
end
