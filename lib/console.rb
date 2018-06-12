class Console

  def initialize(output = $stdout, input = $stdin, move_validator)
    @output = output
    @input = input
    @move_validator = move_validator
  end

  def present(message)
    @output.puts message
  end

  def receive
    @input.gets.chomp
  end

  def validated_input
    choice = receive
    if !@move_validator.valid_move?(choice)
      present(Messages.new.invalid_input)
      validated_input
    else
      choice
    end
  end
end
