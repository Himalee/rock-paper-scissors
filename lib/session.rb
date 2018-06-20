require_relative "game_factory"

class Session

  def initialize(display)
    @display = display
  end

  def start
    game = GameFactory.new(@display)
    game.create_game
    replay?
  end

  def replay?
    @display.replay?
    if @display.play_again
       start
    end
  end
end
