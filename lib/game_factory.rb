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

  def initialize(display, player_factory, rules, game_mode)
    @display = display
    @player_factory = player_factory
    @rules = rules
    @game_mode = game_mode
  end

  def create_game
    players = @player_factory.create_players(@game_mode.get_game_mode)
    Game.new(@display, @rules, players)
  end
end
