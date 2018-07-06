require "session"

describe Session do
  context "human vs human" do
    it "replays game once" do
      output = StringIO.new
      input = StringIO.new("1\nHimalee\nrock\nDaisy\npaper\ny\n1\nHimalee\npaper\nDaisy\nrock\nn")
      console = Console.new(output, input)
      messages = Messages.new
      rules = Rules.new
      move_validator = MoveValidator.new
      display = Display.new(console, messages, move_validator)
      player_factory = PlayerFactory.new(display)
      game_mode = GameMode.new(display)
      game_factory = GameFactory.new(display, player_factory, rules, game_mode)
      session = Session.new(display, game_factory)
      session.start
      expect(output.string).to include("Daisy wins", "Himalee wins")
    end
  end
end
