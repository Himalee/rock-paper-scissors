require_relative "player"

class HumanPlayer < Player

  def initialize(position, display)
    super(position)
    @display = display
  end

  def get_player_move
    @player_input = @display.validated_input
  end

  def get_player_name
    @player_name = @display.input_player_name
  end
end
