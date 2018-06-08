require_relative "display"
require_relative "messages"
require_relative "player"
require_relative "human_player"
require_relative "computer_player"
require_relative "rules"

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
  end

  def player_turn(player)
    @display.prompt_user_for_input(player.name)
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
      @display.present_winner(@player_one.name)
    else
      @display.present_winner(@player_two.name)
    end
  end
end
