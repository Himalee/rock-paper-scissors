require_relative "display"
require_relative "messages"
require_relative "player"
require_relative "human_player"
require_relative "computer_player"

class Game

  def initialize(player_one, player_two, display, messages)
    @player_one = player_one
    @player_two = player_two
    @display = display
    @messages = messages
  end

  def play
    welcome_users
    @player_one.get_input
    @player_two.get_input
    result = option_one_result(@player_one.player_input, @player_two.player_input)
    present_winner(result)
    play_again?
  end

  def welcome_users
    @display.present(@messages.welcome_message)
  end

  def option_one_result(option_one, option_two)
    turn = [option_one, option_two]
    if option_one == option_two
      "draw"
    elsif turn.include?("rock") and turn.include?("scissors") and option_one == "rock"
      "win"
    elsif turn.include?("paper") and turn.include?("rock") and option_one == "paper"
      "win"
    elsif turn.include?("paper") and turn.include?("scissors") and option_one == "scissors"
      "win"
    else
      "error"
    end
  end

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
    end
  end
end
