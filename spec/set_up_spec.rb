require "set_up"
require "human_player"
require "computer_player"
require "move_validator"
require "console"

describe SetUp do

  before (:each) do
    move_validator = MoveValidator.new
    console = Console.new(move_validator)
    @set_up = SetUp.new(console)
  end

  it "returns player types for human vs human" do
    player = @set_up.players("1")
    expect(player[0]).to be_a(HumanPlayer)
    expect(player[1]).to be_a(HumanPlayer)
  end

  it "returns player types for human vs computer" do
    player = @set_up.players("2")
    expect(player[0]).to be_a(HumanPlayer)
    expect(player[1]).to be_a(ComputerPlayer)
  end

  it "returns player types for human vs computer" do
    player = @set_up.players("3")
    expect(player[0]).to be_a(ComputerPlayer)
    expect(player[1]).to be_a(HumanPlayer)
  end
end
