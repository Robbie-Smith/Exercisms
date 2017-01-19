def dig_pow(n, p)
  to_string = n.to_s.chars
  exponent = [p]
  (to_string.length - 1).times do
    exponent << p + 1
  end
  k = to_string.map.with_index do |num, index|
    num.to_i ** exponent[index]
  end.reduce(:+)
  require 'pry'; binding.pry
  if k == ((k / 2) * p)
    1
  else
    -1
  end
end

i = dig_pow(46288, 3)
p i
