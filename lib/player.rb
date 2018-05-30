class Player

  attr_reader :name, :user_input

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

  def take_choice
    @display.present(Messages.new.player_prompt(@name))
    @user_input = @display.receive
  end
end
