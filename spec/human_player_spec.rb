require "human_player"

describe HumanPlayer do
  it "returns input from human" do
    output = StringIO.new
    input = StringIO.new("rock")
    move_validator = MoveValidator.new
    messages = Messages.new
    console = Console.new(output, input)
    display = Display.new(console, messages, move_validator)
    human_player = HumanPlayer.new(1, display)
    expect(human_player.get_input).to eql("rock")
  end
end
