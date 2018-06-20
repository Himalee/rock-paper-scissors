class Display

  def initialize(console, messages, move_validator)
    @console = console
    @messages = messages
    @move_validator = move_validator
  end

  def welcome_users
    @console.present(@messages.welcome_message)
  end

  def input_player_name
    @console.receive
  end

  def prompt_user_for_input(player)
    @console.present(@messages.player_prompt(player))
  end

  def show_move(player_input)
    @console.present("choice: #{player_input}")
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

  def choose_player
    @console.present(@messages.game_mode)
  end

  def validated_input
    choice = @console.receive.downcase
    if !@move_validator.valid_move?(choice)
      @console.present(@messages.invalid_input)
      validated_input
    else
      choice
    end
  end

  def valid_game_type
    game_type = @console.receive
    if !@move_validator.valid_game_type?(game_type)
      @console.present(@messages.game_mode)
      valid_game_type
    else
      game_type
    end
  end
end
