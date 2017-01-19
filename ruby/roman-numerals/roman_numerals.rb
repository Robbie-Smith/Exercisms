require 'pry'
module BookKeeping
  VERSION = 2
end

class Fixnum
  ROMAN_NUM = {M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90, L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1}

  def to_roman
    num = self
    if ROMAN_NUM.value?(num)
      ROMAN_NUM.key(num).to_s
    else
      convert(num)
    end
  end

  def convert(num)
    ROMAN_NUM.reduce('') do |set, (key,value)|
      while num >= value
        num -= value
        set << key.to_s
      end
      set
    end
  end

end
