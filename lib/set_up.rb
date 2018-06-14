class SetUp

  def initialize(console)
    @console = console
  end

  def human_player(position)
    HumanPlayer.new(position, @console)
  end

  def computer_player(position)
    ComputerPlayer.new(position)
  end

  def human_vs_computer
    [human_player(1), computer_player(2)]
  end

  def human_vs_human
    [human_player(1), human_player(2)]
  end

  def computer_vs_human
    [computer_player(1), human_player(2)]
  end

  def players(choice)
    if choice == "1"
      human_vs_human
    elsif choice == "2"
      human_vs_computer
    elsif choice == "3"
      computer_vs_human
    end
  end
end
