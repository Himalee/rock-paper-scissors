require "display"
require "console"
require "move_validator"
require "messages"

describe Display do

  let(:output) { StringIO.new }
  let(:move_validator) { MoveValidator.new }
  let(:messages) { Messages.new }

  it "validates input with Rock" do
    input = StringIO.new("hello\ndan\nshangela\nRock\n")
    console = Console.new(output, input)
    display = Display.new(console, messages, move_validator)
    result = display.validated_input
    expect(result).to eql("rock")
  end

  it "validates input with ScIsSoRs" do
    input = StringIO.new("hello\ndan\nshangela\nScIsSoRs\n")
    console = Console.new(output, input)
    display = Display.new(console, messages,move_validator)
    result = display.validated_input
    expect(result).to eql("scissors")
  end

  it "validates game type input with 1" do
    input = StringIO.new("hello\ndan\nshangela\n1\n")
    console = Console.new(output, input)
    display = Display.new(console, messages, move_validator)
    result = display.valid_game_type
    expect(result).to eql("1")
  end

  it "validates game type input with 2" do
    input = StringIO.new("hello\ndan\nshangela\n2\n")
    console = Console.new(output, input)
    display = Display.new(console, messages, move_validator)
    result = display.valid_game_type
    expect(result).to eql("2")
  end

  it "validates game type input with 3" do
    input = StringIO.new("hello\ndan\nshangela\n3\n")
    console = Console.new(output, input)
    display = Display.new(console, messages, move_validator)
    result = display.valid_game_type
    expect(result).to eql("3")
  end
end
