require "game"

describe Game do

  before (:each) do
    @output = StringIO.new
    @rules = Rules.new
    @messages = Messages.new
    @move_validator = MoveValidator.new
  end

  context "human vs human" do
    it "runs game with rock and paper" do
      input = StringIO.new("Himalee\nrock\nDaisy\npaper")
      console = Console.new(@output, input)
      display = Display.new(console, @messages, @move_validator)
      players = [HumanPlayer.new(1, display), HumanPlayer.new(2, display)]
      game = Game.new(display, @rules, players)
      game.play
      expect(@output.string).to include("Daisy wins")
    end

    it "runs game with rock and paper" do
      input = StringIO.new("Himalee\nscissors\nDaisy\npaper")
      console = Console.new(@output, input)
      display = Display.new(console, @messages, @move_validator)
      players = [HumanPlayer.new(1, display), HumanPlayer.new(2, display)]
      game = Game.new(display, @rules, players)
      game.play
      expect(@output.string).to include("Himalee wins")
    end

    it "runs game with rock and rock" do
      input = StringIO.new("Himalee\nrock\nDaisy\nrock")
      console = Console.new(@output, input)
      display = Display.new(console, @messages, @move_validator)
      players = [HumanPlayer.new(1, display), HumanPlayer.new(2, display)]
      game = Game.new(display, @rules, players)
      game.play
      expect(@output.string).to include("It's a draw!")
    end

    it "runs game with one invalid input" do
      input = StringIO.new("Himalee\nrock\nDaisy\nhello\npaper")
      console = Console.new(@output, input)
      display = Display.new(console, @messages, @move_validator)
      players = [HumanPlayer.new(1, display), HumanPlayer.new(2, display)]
      game = Game.new(display, @rules, players)
      game.play
      expect(@output.string).to include("Please enter 'rock' 💎 , 'paper' 📖  or 'scissors' ✂️ ", "Daisy wins")
    end
  end
end
