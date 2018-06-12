require "player"

describe Player do

  context "position of players" do
    it "returns position of player" do
      player = Player.new(1)
      expect(player.position).to eql(1)
    end

    it "returns position of another player" do
      player = Player.new(2)
      expect(player.position).to eql(2)
    end
  end
end
