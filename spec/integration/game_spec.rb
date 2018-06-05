require "game"

describe Game do

  before (:each) do
    @output = StringIO.new
    @messages = Messages.new
  end

  context "human vs human" do
    it "runs game with rock and paper" do
      input = StringIO.new("rock\npaper")
      display = Display.new(@output, input)
      player_one = HumanPlayer.new("Himalee", display)
      player_two = HumanPlayer.new("Daisy", display)
      game = Game.new(player_one, player_two, display, @messages)
      game.play
      expect(@output.string).to include("Daisy wins")
    end

    it "runs game with rock and paper" do
      input = StringIO.new("scissors\npaper")
      display = Display.new(@output, input)
      player_one = HumanPlayer.new("Himalee", display)
      player_two = HumanPlayer.new("Daisy", display)
      game = Game.new(player_one, player_two, display, @messages)
      game.play
      expect(@output.string).to include("Himalee wins")
    end

    it "runs game with rock and rock" do
      input = StringIO.new("rock\nrock")
      display = Display.new(@output, input)
      player_one = HumanPlayer.new("Himalee", display)
      player_two = HumanPlayer.new("Daisy", display)
      game = Game.new(player_one, player_two, display, @messages)
      game.play
      expect(@output.string).to include("It's a draw!")
    end
  end
end
