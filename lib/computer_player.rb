require_relative "player"

class ComputerPlayer < Player

  attr_reader :player_input

  def get_input
    @display.present(Messages.new.player_prompt(@name))
    get_shape
    display_shape
  end

  def random_shape
    ["rock", "paper", "scissors"].sample
  end

  def get_shape
    @player_input = random_shape
  end

  def display_shape
    @display.present(@player_input)
  end
end
