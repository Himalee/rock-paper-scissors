class Messages

  def user_prompt
    "Welcome to rock, paper or scissors!"
  end

  def player_name(player)
    "Player #{player}: Please enter your name"
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
end
