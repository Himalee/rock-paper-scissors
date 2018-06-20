require_relative "display"
require_relative "player"
require_relative "messages"
require_relative "game"
require_relative "rules"
require_relative "console"
require_relative "move_validator"
require_relative "game_mode"
require_relative "player_factory"

class GameFactory

  def initialize(display)
    @display = display
  end

  def create_game
    rules = Rules.new
    player_factory = PlayerFactory.new(@display)
    game_mode = GameMode.new(player_factory)
    game = Game.new(@display, rules, game_mode)
    game.play
  end
end
