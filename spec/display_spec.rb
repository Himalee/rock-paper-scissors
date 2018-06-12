# require "display"
#
# describe Display do
# #
#   let(:output) { StringIO.new }
#   let(:messages) { Messages.new }
#
#   context "user validation" do
#     it "returns invalid input message given invalid input" do
#       input = StringIO.new
#       console = Console.new(output, input)
#       display = Display.new(console, messages)
#       display.validate_input("hello")
#       expect(output.string).to eql("Please enter 'rock', 'paper' or 'scissors'\n")
#     end
#
#     it "returns rock given rock" do
#       input = StringIO.new
#       console = Console.new(output, input)
#       display = Display.new(console, messages)
#       display.validate_input("rock")
#       expect(output.string).to eql("rock\n")
#     end
# #
# #     it "returns paper given two invalid inputs" do
# #       input = StringIO.new("hello\nworld\npaper")
# #       console = Console.new(output, input)
# #       display = Display.new(console, messages)
# #       expect(display.get_valid_input).to eql("paper")
# #     end
# #
# #     it "returns scissors given three invalid inputs" do
# #       input = StringIO.new("hello\nthere\nworld\nscissors")
# #       console = Console.new(output, input)
# #       display = Display.new(console, messages)
# #       expect(display.get_valid_input).to eql("scissors")
# #     end
#   end
# end
