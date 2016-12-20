require 'pry'
module BookKeeping
  VERSION = 2
end

class Fixnum

NUMBERS = {M: 1000, D: 500, CD: 400, C: 100, XC: 90, L: 50, XL: 40,  X: 10, IX: 9, V: 5, IV: 4, I: 1}

  def to_roman
    num = self
    NUMBERS.value?(num) ? NUMBERS.key(num).to_s : convert(num)
  end

  def convert(num)
    NUMBERS.reduce('') do |num_set, (key,value)|
      while num >= value
        num -= value
        num_set << key.to_s
      end
      num_set
    end
  end

end
