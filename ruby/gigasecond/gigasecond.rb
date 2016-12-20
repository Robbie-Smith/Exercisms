require 'date'
require 'time'
require 'pry'
module BookKeeping
  VERSION = 3
end

class Gigasecond
  GIGASECOND = 1000000000
  def self.from(datetime)
     (datetime.utc + GIGASECOND).utc
  end

end

# http://exercism.io/submissions/bcc11d3c32d949d8be349179743c15ee
