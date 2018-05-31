require "rules"

describe Rules do

  context "rock wins" do
    it "rocks beats scissors when rock is first" do
      rules = Rules.new("rock", "scissors")
      expect(rules.outcome()).to eql("rock")
    end

    it "rock beats scissors when scissors is first" do
      rules = Rules.new("scissors", "rock")
      expect(rules.outcome()).to eql("rock")
    end
  end

  context "scissors wins" do
    it "scissors beats paper when scissors is first" do
      rules = Rules.new("scissors", "paper")
      expect(rules.outcome()).to eql("scissors")
    end

    it "scissors beats paper when paper is first" do
      rules = Rules.new("paper", "scissors")
      expect(rules.outcome()).to eql("scissors")
    end
  end

  context "paper wins" do
    it "paper beats rock when paper is first" do
      rules = Rules.new("paper", "rock")
      expect(rules.outcome()).to eql("paper")
    end

    it "paper beats rock when rock is first" do
      rules = Rules.new("rock", "paper")
      expect(rules.outcome()).to eql("paper")
    end
  end

  context "draws" do
    it "rock draws with rock" do
      rules = Rules.new("rock", "rock")
      expect(rules.outcome()).to eql("draw")
    end

    it "paper draws with paper" do
      rules = Rules.new("paper", "paper")
      expect(rules.outcome()).to eql("draw")
    end

    it "paper draws with scissors" do
      rules = Rules.new("scissors", "scissors")
      expect(rules.outcome()).to eql("draw")
    end
  end
end
