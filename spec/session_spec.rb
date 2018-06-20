require "session"

describe Session do
  context "human vs human" do
    it "replays game once" do
      output = StringIO.new
      input = StringIO.new("1\nHimalee\nrock\nDaisy\npaper\ny\n1\nHimalee\npaper\nDaisy\nrock\nn")
      console = Console.new(output, input)
      messages = Messages.new
      move_validator = MoveValidator.new
      display = Display.new(console, messages, move_validator)
      session = Session.new(display)
      session.start
      expect(output.string).to include("Daisy wins", "Himalee wins")
    end
  end
end
