require "game"

describe Game do

  before (:each) do
    @output = StringIO.new
    @messages = Messages.new
  end

  context "human vs human" do
    it "runs one game with rock and paper" do
      input = StringIO.new("himalee\nrock\ndaisy\npaper\nn")
      display = Display.new(@output, input)
      player_one = HumanPlayer.new("one", display)
      player_two = HumanPlayer.new("two", display)
      game = Game.new(player_one, player_two, display, @messages)
      game.play
      expect(@output.string).to include("daisy wins")
    end

    it "runs one game with scissors and paper" do
      input = StringIO.new("himalee\nscissors\ndaisy\npaper\nn")
      display = Display.new(@output, input)
      player_one = HumanPlayer.new("one", display)
      player_two = HumanPlayer.new("two", display)
      game = Game.new(player_one, player_two, display, @messages)
      game.play
      expect(@output.string).to include("himalee wins")
    end

    it "runs one game with rock and rock" do
      input = StringIO.new("himalee\nrock\ndaisy\nrock\nn")
      display = Display.new(@output, input)
      player_one = HumanPlayer.new("one", display)
      player_two = HumanPlayer.new("two", display)
      game = Game.new(player_one, player_two, display, @messages)
      game.play
      expect(@output.string).to include("It's a draw!")
    end

    it "runs one game with one invalid input" do
      input = StringIO.new("himalee\nrock\ndaisy\nhello\npaper\nn")
      display = Display.new(@output, input)
      player_one = HumanPlayer.new("one", display)
      player_two = HumanPlayer.new("two", display)
      game = Game.new(player_one, player_two, display, @messages)
      game.play
      expect(@output.string).to include("Please enter 'rock', 'paper' or 'scissors'", "daisy wins")
    end
  end
end
