class GameMode

  def initialize(display)
    @display = display
  end

  def get_game_mode
    @display.choose_player
    @display.valid_game_type
  end
end
