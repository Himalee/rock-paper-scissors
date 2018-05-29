class Player

  attr_reader :name

  def initialize(name)
    @name = name
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
