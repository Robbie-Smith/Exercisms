module BookKeeping
  VERSION = 2
end

class Pangram

  def self.is_pangram?(str)
    str.empty? ? false : downcase(str)
  end

  def self.downcase(str)
    word_scan(str.downcase.chars.uniq!)
  end

  def self.word_scan(str)
    pangram_check(str.join.scan(/[a-z]/))
  end

  def self.pangram_check(words)
    words.length == 26
  end

end
