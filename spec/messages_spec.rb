require "messages"

describe Messages do

  let(:messages) { Messages.new }

  it "returns inital prompt" do
    expect(messages.welcome_message()).to include("Welcome", "rock", "paper", "scissors")
  end

  it "returns message when player one wins" do
    expect(messages.winning_message("Himalee")).to eql("🎉  🎉  🎉  Himalee wins! 🎉  🎉  🎉 ")
  end

end
