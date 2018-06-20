require "session"

describe Session do
  context "human vs human" do
    it "replays game once" do
      move_validator = MoveValidator.new
      output = StringIO.new
      input = StringIO.new("1\nHimalee\nrock\nDaisy\npaper\ny\n1\nHimalee\npaper\nDaisy\nrock\nn")
      console = Console.new(output, input)
      session = Session.new(console)
      session.start
      expect(output.string).to include("Daisy wins", "Himalee wins")
    end
  end
end
