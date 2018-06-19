class SetUp

  def initialize(console)
    @console = console
  end

  def get_player(type, position)
    if type == 'human'
      HumanPlayer.new(position, @console)
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

  def game_mode(choice)
    if choice == "1"
      human_vs_human
    elsif choice == "2"
      human_vs_computer
    elsif choice == "3"
      computer_vs_human
    end
  end
end
