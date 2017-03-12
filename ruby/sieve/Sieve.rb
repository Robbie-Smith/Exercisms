class Sieve
  attr_reader :num
  def initialize(num)
    @prime = (2..num).to_a
    @num = num
  end

  def primes
    step_1
  end

  def step_1
    @prime.each {|i| step_2(num,i)}
  end

  def step_2(num,i)
    i.step(num,i) {|x| mark_composite_as_nil(x,i)} unless i.nil?
  end

  def mark_composite_as_nil(x,i)
    @prime.insert(x-2,nil); @prime.delete(x) if x > i
    composite_remover
  end

  def composite_remover
    @prime.compact!
  end

end
