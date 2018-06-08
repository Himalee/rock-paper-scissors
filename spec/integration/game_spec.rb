require "game"

describe Game do

  before (:each) do
    @output = StringIO.new
    @rules = Rules.new
    @messages = Messages.new
  end

  context "human vs human" do
    it "runs game with rock and paper" do
      input = StringIO.new("rock\npaper")
      console = Console.new(@output, input)
      player_one = HumanPlayer.new("Himalee", console)
      player_two = HumanPlayer.new("Daisy", console)
      display = Display.new(console, @messages)
      game = Game.new(player_one, player_two, display, @rules)
      game.play
      expect(@output.string).to include("Daisy wins")
    end

    it "runs game with rock and paper" do
      input = StringIO.new("scissors\npaper")
      console = Console.new(@output, input)
      player_one = HumanPlayer.new("Himalee", console)
      player_two = HumanPlayer.new("Daisy", console)
      display = Display.new(console, @messages)
      game = Game.new(player_one, player_two, display, @rules)
      game.play
      expect(@output.string).to include("Himalee wins")
    end

    it "runs game with rock and rock" do
      input = StringIO.new("rock\nrock")
      console = Console.new(@output, input)
      player_one = HumanPlayer.new("Himalee", console)
      player_two = HumanPlayer.new("Daisy", console)
      display = Display.new(console, @messages)
      game = Game.new(player_one, player_two, display, @rules)
      game.play
      expect(@output.string).to include("It's a draw!")
    end
  end
end
