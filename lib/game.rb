require_relative "display"
require_relative "messages"
require_relative "player"
require_relative "human_player"
require_relative "computer_player"
require_relative "rules"
require_relative "move_validator"
require_relative "game_mode"
require_relative "player_factory"

class Game

  def initialize(display, rules, game_mode)
    @display = display
    @rules = rules
    @game_mode = game_mode
  end

  def play
    @display.welcome_users
    @display.choose_player
    player = @game_mode.create_players(@display.valid_game_type)
    player_turn(player[0])
    player_turn(player[1])
    result(player[0], player[1])
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
end
