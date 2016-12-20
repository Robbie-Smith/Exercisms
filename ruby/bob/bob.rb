require 'pry'
class Bob
RESPONSE = ['Whatever.', 'Whoa, chill out!', 'Sure.']
  def hey(remark)
    binding.pry
    # if remark.match(/\w+[A-Z]/)
    #   RESPONSE[1]
    if remark[-1] != '?' && remark.match(/\w[a-z][\d]/)
      RESPONSE[0]
    elsif remark.match(/[\d][[:punct:]]/)
      RESPONSE[1]
    elsif remark.match(/[[:word:]][[:space:]][[:digit:]][[:punct:]]/)
      RESPONSE[2]
    end
  end
end
