def triple_double(num1,num2)
  require 'pry'; binding.pry
  num = num1.to_s.chars
  a = num.map.with_index do |var,index|
    var = var.to_i
    if var != num[index+1].to_i
      nil
    else
      var
    end

  end
  require 'pry'; binding.pry
end

#451999277, 41177722899), 1)
#(triple_double(1222345, 12345), 0)
#(triple_double(12345, 12345), 0)
#Test.assert_equals(triple_double(666789, 12345667), 1)
#Test.assert_equals(triple_double(10560002, 100), 1)
triple_double(451999277, 41177722899)
