require "human_player"

describe HumanPlayer do
  it "returns input from human" do
    output = StringIO.new
    input = StringIO.new("hello")
    console = Console.new(output, input)
    human_player = HumanPlayer.new("Himalee", console)
    expect(human_player.get_input).to eql("hello")
  end
end
