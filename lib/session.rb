require_relative "game_factory"

class Session

  def initialize(display, game_factory)
    @display = display
    @game_factory = game_factory
  end

  def start
    @display.welcome_users
    game = @game_factory.create_game
    game.play
    replay
    @display.good_bye
  end

  def replay
    @display.replay?
    if @display.play_again
       start
    end
  end
end
