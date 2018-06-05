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

  context "user validation" do
    it "converts input to lowercase" do
      input = StringIO.new("HELLO")
      display = Display.new(output, input)
      expect(display.receive).to eql("hello")
    end

    it "returns rock given one invalid input" do
      output = StringIO.new
      input = StringIO.new("hello\nrock")
      display = Display.new(output, input)
      expect(display.get_valid_input).to eql("rock")
    end

    it "returns paper given two invalid inputs" do
      output = StringIO.new
      input = StringIO.new("hello\nworld\nPaper")
      display = Display.new(output, input)
      expect(display.get_valid_input).to eql("paper")
    end

    it "returns scissors given three invalid inputs" do
      output = StringIO.new
      input = StringIO.new("hello\nthere\nworld\nscissors")
      display = Display.new(output, input)
      expect(display.get_valid_input).to eql("scissors")
    end
  end
end
