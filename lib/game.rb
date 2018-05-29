require_relative "display"
require_relative "messages"
require_relative "rules"
require_relative "player"

class Game

  def initialize(player_one, player_two, display)
    @player_one = player_one
    @player_two = player_two
    @display = display
  end

  def run
    player_prompt
    player_choices
    determine_winner
    winner
  end

  def player_prompt
    @display.present(Messages.new.user_prompt)
  end

  def player_choices
    @display.present(Messages.new.player_prompt(@player_one.name))
    @user_input_one = @display.receive
    @display.present(Messages.new.player_prompt(@player_two.name))
    @user_input_two = @display.receive
  end

  def determine_winner
    rules = Rules.new(@user_input_one, @user_input_two)
    @winning_option = rules.outcome
  end

  def winner
    if @winning_option == "draw"
      @display.present(Messages.new.draw)
    elsif @winning_option == @user_input_one
      @display.present(Messages.new.winning_message(@player_one.name))
    else
      @display.present(Messages.new.winning_message(@player_two.name))
    end
  end
end


# player_one = Player.new("Himalee")
# player_two = Player.new("Daisy")
# display = Display.new
# game = Game.new(player_one, player_two, display)
# game.run
