require "game"

describe Game do
  it "runs game with rock and paper" do
    player_one = Player.new("Himalee")
    player_two = Player.new("Daisy")
    output = StringIO.new
    input = StringIO.new("rock\npaper")
    display = Display.new(output, input)
    game = Game.new(player_one, player_two, display)
    game.run
    expect(output.string).to include("Daisy wins")
  end
end
