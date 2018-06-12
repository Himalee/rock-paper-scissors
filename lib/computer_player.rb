require_relative "player"

class ComputerPlayer < Player

<<<<<<< HEAD
  def get_input
    random_hand_gesture
=======
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
>>>>>>> a4d31d74287bdcb822d1cba4b6714c2278ae6e98
  end

  def random_hand_gesture
    @player_input = ["rock", "paper", "scissors"].sample
  end
end
