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

  def initialize(display, rules, players)
    @display = display
    @rules = rules
    @players = players
  end

  def play
    player_turn(@players[0])
    player_turn(@players[1])
    result(@players[0], @players[1])
  end

  def player_turn(player)
    @display.get_name(player.position)
    player.get_player_name
    @display.prompt_user_for_input(player.player_name)
    player.get_player_move
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
