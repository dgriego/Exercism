require 'benchmark'

class Acronym
  # scan
  #  u                s                 t                   r
  #  0.000030   0.000004   0.000034 (  0.000024)
  #  20r was the average
  def self.abbreviate(phrase)
    phrase.scan(/\b\w/).join.upcase
  end

  # split
  #  u                s                 t                   r
  #  0.000020   0.000003   0.000023 (  0.000019)
  # 22r was the average
  def self.abbreviate(phrase)
    phrase.split(/\W/).map { |word| word[0] }.join.upcase
  end
end

p Acronym.abbreviate("bring your own beer")
