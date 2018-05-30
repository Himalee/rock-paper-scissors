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
    player_prompt
    @player_one.take_choice
    @player_two.take_choice
    determine_winner
    winner
  end

  def player_prompt
    @display.present(@messages.user_prompt)
  end

  def determine_winner
    rules = Rules.new(@player_one.user_input, @player_two.user_input)
    @winning_option = rules.outcome
  end

  def winner
    if @winning_option == "draw"
      @display.present(@messages.draw)
    elsif @winning_option == @player_one.user_input
      @display.present(@messages.winning_message(@player_one.name))
    else
      @display.present(@messages.winning_message(@player_two.name))
    end
  end
end
