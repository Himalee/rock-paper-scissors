require "player"

describe Player do
  context "names of players" do
    it "returns name of player" do
      display = spy(Display)
      player = Player.new("Himalee", display)
      expect(player.name).to eql("Himalee")
    end
    
    it "returns name of another player" do
      display = spy(Display)
      player = Player.new("Daisy", display)
      expect(player.name).to eql("Daisy")
    end
  end

  context "players options" do
    it "player can choose rock" do
      display = spy(Display)
      player = Player.new("Himalee", display)
      expect(player.rock).to eql("rock")
    end

    it "player can choose paper" do
      display = spy(Display)
      player = Player.new("Himalee", display)
      expect(player.paper).to eql("paper")
    end

    it "player can choose scissors" do
      display = spy(Display)
      player = Player.new("Himalee", display)
      expect(player.scissors).to eql("scissors")
    end
  end
end
