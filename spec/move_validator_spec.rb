require "move_validator"

describe MoveValidator do
  it "rejects an invalid word" do
    move_validator = MoveValidator.new
    expect(move_validator.valid_move?("lightbulb")).to be false
    expect(move_validator.valid_move?("orange")).to be false
    expect(move_validator.valid_move?("1")).to be false
  end

  it "accepts rock paper or scissors" do
    move_validator = MoveValidator.new
    expect(move_validator.valid_move?("rock")).to be true
    expect(move_validator.valid_move?("paper")).to be true
    expect(move_validator.valid_move?("scissors")).to be true
  end
end
