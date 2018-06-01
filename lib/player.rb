class Player

  attr_reader :name

  def initialize(name, display)
    @name = name
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
