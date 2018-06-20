require_relative "console"

class PlayerFactory

  def initialize(display)
    @display = display
  end

  def get_player(type, position)
    if type == 'human'
      HumanPlayer.new(position, @display)
    elsif type == 'computer'
      ComputerPlayer.new(position)
    end
  end

  def human_vs_computer
    [get_player('human', 1), get_player('computer', 2)]
  end

  def human_vs_human
    [get_player('human', 1), get_player('human', 2)]
  end

  def computer_vs_human
    [get_player('computer', 1), get_player('human', 2)]
  end
end
