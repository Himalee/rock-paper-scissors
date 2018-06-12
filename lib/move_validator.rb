class MoveValidator

  def valid_move?(move)
   possible_moves = ["rock", "paper", "scissors"]
   possible_moves.include?(move.downcase)
 end
end
