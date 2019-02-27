class Complement
  def self.of_dna(strand)
    return strand if strand.empty?

    dna_conversion_ref = {
      "G" => "C",
      "C" => "G",
      "T" => "A",
      "A" => "U"
    }

    strand.chars.map do |nucleotide|
      dna_conversion_ref[nucleotide]
    end.join
  end
end
