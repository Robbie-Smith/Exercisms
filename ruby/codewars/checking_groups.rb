class ValidString
  PAIRS = { '(' => ')', '[' => ']', '{' => '}' }
  def group_check(string)
    split = string.split('')
    booger = []
    (split.length - 1).times do |i|
      char = split[i]
      break if closed_pair.include?(char)
      booger << split.delete_at(i)
    end
    require 'pry'; binding.pry
  end

  def open_pair
    ['(','[','{']
  end

  def closed_pair
    [')', ']', '}']
  end
end
v = ValidString.new
v.group_check("{}([])")
# true
# v.group_check("{[{}[]()[]{}{}{}{}{}{}()()()()()()()()]{{{[[[((()))]]]}}}}(())[[]]{{}}[][][][][][][]({[]})")
# true
# group_check("")
# true
# group_check("{(})")
# false
# group_check("[{}{}())")
# false
