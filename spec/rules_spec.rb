require "rules"

describe Rules do

  before (:each) do
    @rules = Rules.new
  end

  describe '#outcome()' do
    it "returns rock with rock and scissors" do
      expect(@rules.outcome(:player_one => "rock", :player_two => "scissors")).to eql("rock")
    end

    it "returns paper with rock and paper" do
      expect(@rules.outcome(:player_one => "rock", :player_two => "paper")).to eql("paper")
    end

    it "returns scissors with scissors and paper" do
      expect(@rules.outcome(:player_one =>"scissors", :player_two => "paper")).to eql("scissors")
    end
  end

  describe '#winner?()' do
    it "returns player_one with scissors and paper" do
      expect(@rules.winner?(:player_one =>"scissors", :player_two => "paper")).to eql(:player_one)
    end

    it "returns player_two with rock and paper" do
      expect(@rules.winner?(:player_one =>"rock", :player_two => "paper")).to eql(:player_two)
    end

    it "returns nil with rock and rock" do
      expect(@rules.winner?(:player_one =>"rock", :player_two => "rock")).to eql(nil)
    end
  end

end
