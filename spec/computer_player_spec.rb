require "computer_player"
require "display"

describe ComputerPlayer do
  it "displays rock, paper or scissors" do
    output = StringIO.new
    input = StringIO.new
    display = Display.new(output, input)
    computer_player = ComputerPlayer.new("computer", display)

    computer_player.random_shape
    computer_player.get_shape
    computer_player.display_shape

    expect(output.string).to eql("rock\n").or(eq("paper\n")).or(eq("scissors\n"))
  end
end
