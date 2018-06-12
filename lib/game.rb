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
<<<<<<< HEAD
    @display.welcome_users
    player_turn(@player_one)
    player_turn(@player_two)
    result
=======
    welcome_users
    @player_one.get_input
    @player_two.get_input
    result = option_one_result(@player_one.player_input, @player_two.player_input)
    present_winner(result)
    play_again?
>>>>>>> a4d31d74287bdcb822d1cba4b6714c2278ae6e98
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

<<<<<<< HEAD
  def winner
    result = @rules.winner?(:player_one => @player_one.player_input, :player_two => @player_two.player_input)
    if result == :player_one
      @display.present_winner(@player_one.name)
    else
      @display.present_winner(@player_two.name)
=======
  def present_winner(result)
    if result == "draw"
      @display.present(@messages.draw)
    elsif result == "win"
      @display.present(@messages.winning_message(@player_one.player_name))
    else
      @display.present(@messages.winning_message(@player_two.player_name))
    end
  end

  def play_again?
    @display.present(@messages.replay?)
    answer = @display.receive
    until answer != "y"
      play
>>>>>>> a4d31d74287bdcb822d1cba4b6714c2278ae6e98
    end
  end
end
