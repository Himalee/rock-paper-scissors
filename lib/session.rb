require_relative "display"
require_relative "player"
require_relative "messages"
require_relative "game"
require_relative "rules"
require_relative "console"
require_relative "move_validator"
require_relative "game_mode"
require_relative "player_factory"

class Session

  def initialize(console)
    @console = console
  end

  def start
    rules = Rules.new
    messages = Messages.new
    move_validator = MoveValidator.new
    display = Display.new(@console, messages, move_validator)
    player_factory = PlayerFactory.new(display)
    game_mode = GameMode.new(player_factory)
    game = Game.new(display, rules, game_mode)
    game.play
    display.replay?
    if display.play_again
      start
    end
  end
end
