module BookKeeping
  VERSION = 2
end

class Raindrops

  NUMBER = {3=> "Pling", 5=> 'Plang', 7=>'Plong', 15=> 'PlingPlang', 21=>'PlingPlong', 35=> 'PlangPlong', 105=> 'PlingPlangPlong'}

  def self.convert(num)
    NUMBER.reverse_each do |k,v|
      return v if num % k == 0
    end
    return num.to_s
  end
end
