require "human_player"
require "computer_player"
require "move_validator"
require "player_factory"
require "messages"
require "display"

describe PlayerFactory do

  before (:each) do
    messages = Messages.new
    move_validator = MoveValidator.new
    display = Display.new(messages, move_validator)
    @player_factory = PlayerFactory.new(display)
  end

  it "returns player types for human vs human" do
    player = @player_factory.create_players("1")
    expect(player[0]).to be_a(HumanPlayer)
    expect(player[1]).to be_a(HumanPlayer)
  end

  it "returns player types for human vs computer" do
    player = @player_factory.create_players("2")
    expect(player[0]).to be_a(HumanPlayer)
    expect(player[1]).to be_a(ComputerPlayer)
  end

  it "returns player types for human vs computer" do
    player = @player_factory.create_players("3")
    expect(player[0]).to be_a(ComputerPlayer)
    expect(player[1]).to be_a(HumanPlayer)
  end
end
