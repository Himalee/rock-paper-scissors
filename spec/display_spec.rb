require "display"

describe Display do
  it "displays output" do
    output = StringIO.new
    display = Display.new(output)
    display.present("hello")
    expect(output.string).to eql("hello\n")
  end

  it "takes input" do
    output = StringIO.new
    input = StringIO.new("hello")
    display = Display.new(output, input)
    expect(display.receive).to eql("hello")
  end
end
