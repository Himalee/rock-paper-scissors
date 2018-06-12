class Messages

  def welcome_message
    "Welcome to rock, paper or scissors!"
  end

  def player_name(player_position)
    "Player #{player_position}: Please enter your name"
  end

  def player_prompt(player)
    "#{player}: Please choose rock, paper or scissors"
  end

  def winning_message(player_name)
    "#{player_name} wins!"
  end

  def draw
    "It's a draw!"
  end

  def invalid_input
    "Please enter 'rock', 'paper' or 'scissors'"
  end

  def replay_message
    "Replay? Type 'y' for yes or 'n' for no"
  end
end
