class Acronym
  def self.abbreviate(phrase)
    phrase.split(/\W/).map do |word|
      word[0] unless word.empty?
    end.join.upcase
  end
end
