require "player"

describe Player do

  let(:display) { spy(Display) }

  context "position of players" do
    it "returns name of player" do
      player = Player.new("Himalee")
      expect(player.name).to eql("Himalee")
    end

    it "returns name of another player" do
      player = Player.new("Daisy")
      expect(player.name).to eql("Daisy")
    end
  end
end
