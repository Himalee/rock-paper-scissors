require "choice"

describe Choice do

  before(:each) do
    @choice = Choice.new
  end

  context "first go" do

    it "returns rock, given rock" do
      expect(@choice.first_choice("rock")).to eql("rock")
    end

    it "returns rock, paper or scissors" do
      expect(@choice.first_choice("paper")).to eql("paper")
    end
  end
end
