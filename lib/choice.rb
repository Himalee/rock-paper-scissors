class Choice

  def first_choice(first_choice)
    if first_choice == "rock"
      rock
    elsif first_choice == "paper"
      paper
    elsif first_choice == "scissors"
      scissors
    else
      error
    end
  end

  def rock
    "rock"
  end

  def paper
    "paper"
  end

  def scissors
    "scissors"
  end

end 
