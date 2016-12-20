require 'pry'
class Hamming
  def self.compute(dna_1, dna_2)
    count = 0
    dna_1.each_char.with_index do |pair_1, i|
      base_pair_b = dna_2[i]
      count += 1 if base_pair_b != pair_1
    end
    hamming_distance
  end
end

# http://exercism.io/submissions/8527d1a486514165887327ad2e694a35
