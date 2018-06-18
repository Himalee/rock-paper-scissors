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
      input = StringIO.new("1\nHimalee\nrock\nDaisy\npaper")
      console = Console.new(@output, input, @move_validator)
      display = Display.new(console, @messages)
      set_up = SetUp.new(console)
      game = Game.new(display, @rules, set_up)
      game.play
      expect(@output.string).to include("Daisy wins")
    end

    it "runs game with rock and paper" do
      input = StringIO.new("1\nHimalee\nscissors\nDaisy\npaper")
      console = Console.new(@output, input, @move_validator)
      display = Display.new(console, @messages)
      set_up = SetUp.new(console)
      game = Game.new(display, @rules, set_up)
      game.play
      expect(@output.string).to include("Himalee wins")
    end

    it "runs game with rock and rock" do
      input = StringIO.new("1\nHimalee\nrock\nDaisy\nrock")
      console = Console.new(@output, input, @move_validator)
      display = Display.new(console, @messages)
      set_up = SetUp.new(console)
      game = Game.new(display, @rules, set_up)
      game.play
      expect(@output.string).to include("It's a draw!")
    end

    it "runs game with one invalid input" do
      input = StringIO.new("1\nHimalee\nrock\nDaisy\nhello\npaper")
      console = Console.new(@output, input, @move_validator)
      display = Display.new(console, @messages)
      set_up = SetUp.new(console)
      game = Game.new(display, @rules, set_up)
      game.play
      expect(@output.string).to include("Please enter 'rock', 'paper' or 'scissors'", "Daisy wins")
    end
  end
end
