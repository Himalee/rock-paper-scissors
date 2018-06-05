require "game"

describe Game do

  before(:each) do
    @player_one = double(HumanPlayer)
    @player_two = double(HumanPlayer)
    @display = double(Display)
    @messages = double(Messages)
  end

  describe '#option_one_result()' do
    it "returns win with paper and rock" do
      game = Game.new(@player_one, @player_two, @display, @messages)
      expect(game.option_one_result("paper", "rock")).to eql("win")
    end

    it "returns win with rock and scissors" do
      game = Game.new(@player_one, @player_two, @display, @messages)
      expect(game.option_one_result("rock", "scissors")).to eql("win")
    end

    it "returns win with scissors and paper" do
      game = Game.new(@player_one, @player_two, @display, @messages)
      expect(game.option_one_result("scissors", "paper")).to eql("win")
    end

    it "returns draw with paper and paper" do
      game = Game.new(@player_one, @player_two, @display, @messages)
      expect(game.option_one_result("paper", "paper")).to eql("draw")
    end
  end
end
