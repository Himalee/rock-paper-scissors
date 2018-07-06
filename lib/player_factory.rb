require_relative "console"

class PlayerFactory

  def initialize(display)
    @display = display
  end

  def create_players(choice)
    if choice == "1"
      [HumanPlayer.new(1, @display), HumanPlayer.new(2, @display)]
    elsif choice == "2"
      [HumanPlayer.new(1, @display), ComputerPlayer.new(2)]
    elsif choice == "3"
      [ComputerPlayer.new(1), HumanPlayer.new(2, @display)]
    end
  end
end
