require 'pry'
module BookKeeping
  VERSION = 2
end

class Fixnum
  ROMAN_NUM =
  {"I" => 1,
    "V"=> 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
  "M" =>1000}

  def to_roman
    num = self
    roman = ""
    ROMAN_NUM.each_pair do |(key,value)|
      if num != value
        value += 1
        roman << key
        break if value.eql?(num)
      end
    end
  end
end
