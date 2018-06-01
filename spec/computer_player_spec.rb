require "computer_player"
require "display"

describe ComputerPlayer do
  it "displays rock, paper or scissors" do
    output = StringIO.new
    input = StringIO.new
    display = Display.new(output, input)
    computer_player = ComputerPlayer.new("computer", display)

    computer_player.randomise
    computer_player.display_input
    computer_player.player_input

    expect(output.string).to eql("rock\n").or(eq("paper\n")).or(eq("scissors\n"))
  end
end
