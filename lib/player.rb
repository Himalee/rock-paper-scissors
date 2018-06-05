class Player

  attr_reader :position

  def initialize(position, display)
    @position = position
    @display = display
  end

  def rock
    "rock"
  end

  def paper
    "paper"
  end

  def scissors
    "scissors"
  end
end
