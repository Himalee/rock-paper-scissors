require "game_mode"
require "human_player"
require "computer_player"
require "move_validator"
require "player_factory"
require "console"

describe GameMode do

  before (:each) do
    move_validator = MoveValidator.new
    console = Console.new(move_validator)
    player_factory = PlayerFactory.new(console)
    @game_mode = GameMode.new(player_factory)
  end

  it "returns player types for human vs human" do
    player = @game_mode.create_players("1")
    expect(player[0]).to be_a(HumanPlayer)
    expect(player[1]).to be_a(HumanPlayer)
  end

  it "returns player types for human vs computer" do
    player = @game_mode.create_players("2")
    expect(player[0]).to be_a(HumanPlayer)
    expect(player[1]).to be_a(ComputerPlayer)
  end

  it "returns player types for human vs computer" do
    player = @game_mode.create_players("3")
    expect(player[0]).to be_a(ComputerPlayer)
    expect(player[1]).to be_a(HumanPlayer)
  end
end
