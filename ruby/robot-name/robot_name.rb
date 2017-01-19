require 'set'
module BookKeeping
  VERSION = 2
end

class Robot
  LETTERS = [*"A".."Z"]

  def self.all_names
    @@all_names ||= Set.new
  end

  def initialize
    @name = ""
  end

  def name
    if name_is_empty?
      create_new_name
    end
    @name
  end

  def create_new_name
    generate_name
    check_for_valid_name
    self.class.all_names << @name
  end

  def reset
    @name = ""
  end

  def check_for_valid_name
    if name_is_taken?
      reset
      generate_name
    end
  end

  def generate_name
    2.times { @name << LETTERS.sample }
    @name = name + rand(100..300).to_s
  end

  private

  def name_is_empty?
    @name.empty?
  end

  def name_is_taken?
    Robot.all_names.include?(name)
  end

end
