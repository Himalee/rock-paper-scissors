require_relative "player"

class HumanPlayer < Player

<<<<<<< HEAD
  def initialize(name, console)
    super(name)
    @console = console
  end

  def get_input
    @player_input = @console.validated_input
  end

  def get_player_name
    @display.present(Messages.new.player_name(@position))
    @player_name = @display.receive
=======
  attr_reader :player_input, :player_name

  def get_input
    get_player_name
    @display.present(Messages.new.player_prompt(@player_name))
    @player_input = @display.get_valid_input
>>>>>>> a4d31d74287bdcb822d1cba4b6714c2278ae6e98
  end

  def get_player_name
    @display.present(Messages.new.player_name(@position))
    @player_name = @display.receive
  end
end
