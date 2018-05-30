require "game"

describe Game do

  before (:each) do

  end

  it "runs game with rock and paper" do
    output = StringIO.new
    input = StringIO.new("rock\npaper")
    display = Display.new(output, input)
    player_one = Player.new("Himalee", display)
    player_two = Player.new("Daisy", display)
    messages = Messages.new
    game = Game.new(player_one, player_two, display, messages)
    game.run
    expect(output.string).to include("Daisy wins")
  end

  it "runs game with rock and paper" do
    output = StringIO.new
    input = StringIO.new("scissors\npaper")
    display = Display.new(output, input)
    player_one = Player.new("Himalee", display)
    player_two = Player.new("Daisy", display)
    messages = Messages.new
    game = Game.new(player_one, player_two, display, messages)
    game.run
    expect(output.string).to include("Himalee wins")
  end

  it "runs game with rock and rock" do
    output = StringIO.new
    input = StringIO.new("rock\nrock")
    display = Display.new(output, input)
    player_one = Player.new("Himalee", display)
    player_two = Player.new("Daisy", display)
    display = Display.new(output, input)
    messages = Messages.new
    game = Game.new(player_one, player_two, display, messages)
    game.run
    expect(output.string).to include("It's a draw!")
  end
end
