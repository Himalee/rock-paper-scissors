class Rules

  def initialize(option_one, option_two)
    @option_one = option_one
    @option_two = option_two
  end

  def outcome
    turn = [@option_one, @option_two]
    if turn.include?("rock") and turn.include?("scissors")
      "rock"
    elsif turn.include?("paper") and turn.include?("rock")
      "paper"
    else
      "scissors"
    end
  end
end
