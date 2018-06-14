require "move_validator"

describe MoveValidator do

  let :move_validator { MoveValidator.new }

  it "rejects an invalid word" do
    expect(move_validator.valid_move?("lightbulb")).to be false
    expect(move_validator.valid_move?("orange")).to be false
    expect(move_validator.valid_move?("1")).to be false
  end

  it "accepts rock paper or scissors" do
    expect(move_validator.valid_move?("rock")).to be true
    expect(move_validator.valid_move?("paper")).to be true
    expect(move_validator.valid_move?("scissors")).to be true
  end

  it "accepts 1, 2 or 3" do
    expect(move_validator.valid_game_type?("1")).to be true
    expect(move_validator.valid_game_type?("2")).to be true
    expect(move_validator.valid_game_type?("3")).to be true
  end
end
