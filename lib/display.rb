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

  def replay?
    @console.present(@messages.replay_message)
  end

  def play_again
    @console.receive == "y"
  end

  def get_name(player)
    @console.present(@messages.player_name(player))
  end
end
