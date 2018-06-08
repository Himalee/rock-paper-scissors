class Rules

  def outcome(turn)
    if rock_wins(turn)
      "rock"
    elsif paper_wins(turn)
      "paper"
    else
      "scissors"
    end
  end

  def rock_wins(turn)
    turn.has_value?("scissors") and turn.has_value?("rock")
  end

  def paper_wins(turn)
    turn.has_value?("rock") and turn.has_value?("paper")
  end

  def winner?(turn)
    winning_move = outcome(turn)
    turn.key(winning_move)
  end
end
