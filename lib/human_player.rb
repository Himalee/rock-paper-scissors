class HumanPlayer < Player

  attr_reader :player_input, :player_name

  def get_input
    get_player_name
    @display.present(Messages.new.player_prompt(@player_name))
    @player_input = @display.get_valid_input
  end

  def get_player_name
    @display.present(Messages.new.player_name(@position))
    @player_name = @display.receive
  end
end
