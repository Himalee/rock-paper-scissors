require_relative "player"

class ComputerPlayer < Player

  def get_input
    random_hand_gesture
  end

  def random_hand_gesture
    @player_input = ["rock", "paper", "scissors"].sample
  end
end
