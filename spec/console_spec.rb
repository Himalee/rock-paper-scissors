require "console"
require "move_validator"
require "messages"

describe Console do
  let(:output) { StringIO.new }
  let(:move_validator) { MoveValidator.new }

  it "displays output" do
    console = Console.new(output, move_validator)
    console.present("hello")
    expect(output.string).to eql("hello\n")
  end

  it "takes input" do
    input = StringIO.new("hello")
    console = Console.new(output, input, move_validator)
    expect(console.receive).to eql("hello")
  end

  it "validates input with Rock" do
    input = StringIO.new("hello\ndan\nshangela\nRock\n")
    console = Console.new(output, input, move_validator)
    result = console.validated_input
    expect(result).to eql("rock")
  end

  it "validates input with ScIsSoRs" do
    input = StringIO.new("hello\ndan\nshangela\nScIsSoRs\n")
    console = Console.new(output, input, move_validator)
    result = console.validated_input
    expect(result).to eql("scissors")
  end
end
