class MoveValidator

  def valid_move?(move)
    possible_moves = ["rock", "paper", "scissors"]
    possible_moves.include?(move)
  end

  def valid_game_type?(type)
    possible_types = ["1", "2", "3"]
    possible_types.include?(type)
  end
end
