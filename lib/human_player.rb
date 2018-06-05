class HumanPlayer < Player

  attr_reader :player_input

  def get_input
    @display.present(Messages.new.player_prompt(@name))
    @player_input = @display.get_valid_input
  end
end
