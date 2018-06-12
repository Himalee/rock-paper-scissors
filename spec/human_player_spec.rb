require "human_player"
require "move_validator"
require "console"

describe HumanPlayer do
  it "returns input from human" do
    output = StringIO.new
    input = StringIO.new("rock")
    move_validator = MoveValidator.new
    console = Console.new(output, input, move_validator)
    human_player = HumanPlayer.new("Himalee", console)
    expect(human_player.get_input).to eql("rock")
  end
end
