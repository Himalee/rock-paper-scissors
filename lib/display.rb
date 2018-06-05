class Display

  def initialize(output = $stdout, input = $stdin)
    @output = output
    @input = input
  end

  def present(message)
    @output.puts message
  end

  def receive
    @input.gets.chomp.downcase
  end

  def get_valid_input
    current_input = receive
    if !valid_input?(current_input)
      present(Messages.new.invalid_input)
      get_valid_input
    else
      current_input
    end
  end

  def valid_input?(option)
    option == "paper" || option == "rock" || option == "scissors"
  end

end
