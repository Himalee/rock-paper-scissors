class Game

  def initialize(player_one, player_two, display)
    @player_one = player_one
    @player_two = player_two
    @display = display
  end

  def run
    @display.present(Messages.new.user_prompt)
    user_input_one = @display.receive
    @display.present("Choose rock, paper or scissors")
    user_input_two = @display.receive
    rules = Rules.new(user_input_one, user_input_two)
    winning_option = rules.outcome
    if winning_option == user_input_one
      @display.present(Messages.new.winning_message(@player_one.name))
    else
      @display.present(Messages.new.winning_message(@player_two.name))
    end
  end
end
