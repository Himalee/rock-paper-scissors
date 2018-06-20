require "console"
require "move_validator"
require "messages"

describe Console do
  let(:output) { StringIO.new }

  it "displays output" do
    console = Console.new(output)
    console.present("hello")
    expect(output.string).to eql("hello\n")
  end

  it "takes input" do
    input = StringIO.new("hello")
    console = Console.new(output, input)
    expect(console.receive).to eql("hello")
  end
end
