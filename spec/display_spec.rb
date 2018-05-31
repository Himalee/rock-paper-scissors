require "display"

describe Display do

  let(:output) { StringIO.new }

  it "displays output" do
    display = Display.new(output)
    display.present("hello")
    expect(output.string).to eql("hello\n")
  end

  it "takes input" do
    input = StringIO.new("hello")
    display = Display.new(output, input)
    expect(display.receive).to eql("hello")
  end
end
