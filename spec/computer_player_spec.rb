require "computer_player"
require "display"

describe ComputerPlayer do
  it "displays rock, paper or scissors" do
    computer_player = ComputerPlayer.new("computer")
    expect(computer_player.get_player_move).to eql("rock").or(eq("paper")).or(eq("scissors"))
  end
end
