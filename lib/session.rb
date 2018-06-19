require_relative "display"
require_relative "player"
require_relative "messages"
require_relative "game"
require_relative "rules"
require_relative "console"
require_relative "move_validator"
require_relative "set_up"

class Session

  def initialize(console)
    @console = console
  end

  def start
    rules = Rules.new
    messages = Messages.new
    display = Display.new(@console, messages)
    set_up = SetUp.new(@console)
    game = Game.new(display, rules, set_up)
    game.play
    display.replay?
    if display.play_again
      start
    end
  end
end
