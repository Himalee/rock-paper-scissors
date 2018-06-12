class HumanPlayer < Player

  def initialize(name, console)
    super(name)
    @console = console
  end

  def get_input
    @player_input = @console.receive
  end
end
