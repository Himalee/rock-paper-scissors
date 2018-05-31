require_relative "display"
require_relative "messages"
require_relative "rules"
require_relative "player"

class Game

  def initialize(player_one, player_two, display, messages)
    @player_one = player_one
    @player_two = player_two
    @display = display
    @messages = messages
  end

  def run
    welcome_users
    @player_one.choose
    @player_two.choose
    determine_winner
    present_winner
  end

  def welcome_users
    @display.present(@messages.welcome_message)
  end

  def determine_winner
    rules = Rules.new(@player_one.user_input, @player_two.user_input)
    @winning_option = rules.outcome
  end

  def present_winner
    if @winning_option == "draw"
      @display.present(@messages.draw)
    elsif @winning_option == @player_one.user_input
      @display.present(@messages.winning_message(@player_one.name))
    else
      @display.present(@messages.winning_message(@player_two.name))
    end
  end
end
