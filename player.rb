class Player
  attr_reader :score, :name, :answer
  def initialize(name)
    @name = name
    @score = 0
  end
  def ding
    @score += 1
  end
end
