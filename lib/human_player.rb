require_relative "player"

class HumanPlayer < Player

  def initialize(position, console)
    super(position)
    @console = console
  end

  def get_input
    @player_input = @console.validated_input
  end

  def get_player_name
    @player_name = @console.receive
  end
end
