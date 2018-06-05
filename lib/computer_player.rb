require_relative "player"

class ComputerPlayer < Player

  attr_reader :player_input, :player_name

  def get_input
    @display.present(Messages.new.player_prompt(player_name))
    randomise
    display_input
  end

  def player_name
    "Computer"
  end

  def randomise
    options = ["rock", "paper", "scissors"]
    @player_input = options.sample
  end

  def display_input
    @display.present(@player_input)
  end
end
