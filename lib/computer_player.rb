require_relative "player"

class ComputerPlayer < Player

  def get_player_move
    random_hand_gesture
  end

  def random_hand_gesture
    @player_input = ["rock", "paper", "scissors"].sample
  end

  def get_player_name
    @player_name = "Computer"
  end
end
