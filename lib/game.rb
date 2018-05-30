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
    @player_one.take_choice
    @player_two.take_choice
    determine_winner
    winner
  end

  def player_prompt
    @display.present(Messages.new.user_prompt)
  end

  def determine_winner
    rules = Rules.new(@player_one.user_input, @player_two.user_input)
    @winning_option = rules.outcome
  end

  def winner
    if @winning_option == "draw"
      @display.present(Messages.new.draw)
    elsif @winning_option == @player_one.user_input
      @display.present(Messages.new.winning_message(@player_one.name))
    else
      @display.present(Messages.new.winning_message(@player_two.name))
    end
  end
end



# display = Display.new
# player_one = Player.new("Himalee", display)
# player_two = Player.new("Devlin", display)
# game = Game.new(player_one, player_two, display)
# game.run
