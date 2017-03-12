class Prime
  def initialize
    @prime = [*2..11000]
  end

  def self.nth(number)
    prime = Prime.new
    first_filter = prime.find_primes
    second_filter = prime.filter_remaining_numbers(first_filter)
    require 'pry'; binding.pry
  end

  def find_primes
    @prime.find_all do |number|
      remove_even_numbers(number)
    end
  end

  def filter_remaining_numbers(first_filter)
    first_filter.find_all do |number|
      unless is_odd_and_divisible_by_three_or_five?(number)
        number
      end
    end
  end


  def remove_even_numbers(number)
    unless is_even?(number)
      number
    end
  end

  def is_even?(number)
    number > 2 && number.even?
  end

  def is_odd_and_divisible_by_three_or_five?(number)
    number > 7 && number % 3 == 0 || number % 5 == 0
  end
end
