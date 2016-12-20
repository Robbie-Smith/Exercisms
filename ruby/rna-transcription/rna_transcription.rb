module BookKeeping
  VERSION = 4
end

class Complement
    RNA = {"C"=> "G", "G"=>"C", "A"=> "T",
    "U"=>"A"}

  def self.of_dna(n_tide)
    check_input_for_validity(n_tide)
  end

  def self.check_input_for_validity(n_tide)
    n_tide.chars.each {|i| n_tide = '' unless RNA.has_value?(i)}
    find_pairs(n_tide)
  end

  def self.find_pairs(n_tide)
    pairs = n_tide.chars.map {|value| RNA.key(value)}
    pairs.join
  end

end
