require_relative "display"
require_relative "messages"
require_relative "player"
require_relative "human_player"
require_relative "computer_player"
require_relative "rules"
require_relative "move_validator"

class Game

  def initialize(player_one, player_two, display, rules)
    @player_one = player_one
    @player_two = player_two
    @display = display
    @rules = rules
  end

  def play
    @display.welcome_users
    player_turn(@player_one)
    player_turn(@player_two)
    result
    play_again?
  end

  def player_turn(player)
    @display.get_name(player.position)
    player.get_player_name
    @display.prompt_user_for_input(player.player_name)
    player.get_input
    @display.show_move(player.player_input)
  end

  def result
    if @player_one.player_input == @player_two.player_input
      @display.draw
    else
      winner
    end
  end

  def winner
    result = @rules.winner?(:player_one => @player_one.player_input, :player_two => @player_two.player_input)
    if result == :player_one
      @display.present_winner(@player_one.player_name)
    else
      @display.present_winner(@player_two.player_name)
    end
  end

  def play_again?
    @display.replay?
    if @display.play_again
      play
    end
  end
end
