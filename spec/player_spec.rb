require "player"

describe Player do
  context "names of players" do
    it "returns name of player" do
      player = Player.new("Himalee")
      expect(player.name).to eql("Himalee")
    end
    it "returns name of another player" do
      player = Player.new("Daisy")
      expect(player.name).to eql("Daisy")
    end
  end

  context "players options" do
    it "player can choose rock" do
      player = Player.new("Himalee")
      expect(player.rock).to eql("rock")
    end

    it "player can choose paper" do
      player = Player.new("Himalee")
      expect(player.paper).to eql("paper")
    end

    it "player can choose scissors" do
      player = Player.new("Himalee")
      expect(player.scissors).to eql("scissors")
    end
  end
end
