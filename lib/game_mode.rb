class GameMode

  def initialize(player_factory)
    @player_factory = player_factory
  end

  def create_players(choice)
    if choice == "1"
      @player_factory.human_vs_human
    elsif choice == "2"
      @player_factory.human_vs_computer
    elsif choice == "3"
      @player_factory.computer_vs_human
    end
  end
end
