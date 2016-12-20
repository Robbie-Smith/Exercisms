module BookKeeping
  VERSION = 3
end

class Squares

  def initialize(num)
    @range = (0..num)
  end

  def square_of_sum
    @range.reduce(:+) ** 2
  end

  def sum_of_squares
    range_squared = @range.map {|n| n ** 2}
    range_squared.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

# http://exercism.io/submissions/29647bd099764fdcaf75de3a3e5e28c3
