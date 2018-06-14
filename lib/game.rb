require_relative "display"
require_relative "messages"
require_relative "player"
require_relative "human_player"
require_relative "computer_player"
require_relative "rules"
require_relative "move_validator"
require_relative "set_up"

class Game

  def initialize(display, rules, set_up)
    @display = display
    @rules = rules
    @set_up = set_up
  end

  def play
    @display.welcome_users
    @display.choose_player
    player = @set_up.players(@display.sets_up_game)
    player_turn(player[0])
    player_turn(player[1])
    result(player[0], player[1])
    play_again?
  end

  def player_turn(player)
    @display.get_name(player.position)
    player.get_player_name
    @display.prompt_user_for_input(player.player_name)
    player.get_input
    @display.show_move(player.player_input)
  end

  def result(first_player, second_player)
    if first_player.player_input == second_player.player_input
      @display.draw
    else
      winner(first_player, second_player)
    end
  end

  def winner(first_player, second_player)
    result = @rules.winner?(:player_one => first_player.player_input, :player_two => second_player.player_input)
    if result == :player_one
      @display.present_winner(first_player.player_name)
    else
      @display.present_winner(second_player.player_name)
    end
  end

  def play_again?
    @display.replay?
    if @display.play_again
      play
    end
  end
end
