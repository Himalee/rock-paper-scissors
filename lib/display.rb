class Display

  def initialize(console, messages)
    @console = console
    @messages = messages
  end

  def welcome_users
    @console.present(@messages.welcome_message)
  end

  def prompt_user_for_input(player)
    @console.present(@messages.player_prompt(player))
  end

  def show_move(player_input)
    @console.present(player_input)
  end

  def draw
    @console.present(@messages.draw)
  end

  def present_winner(player)
    @console.present(@messages.winning_message(player))
  end

  def get_valid_input
    current_input = receive
    if !valid_input?(current_input)
      present(Messages.new.invalid_input)
      get_valid_input
    else
      current_input
    end
  end

  def valid_input?(option)
    option == "paper" || option == "rock" || option == "scissors"
  end

end
