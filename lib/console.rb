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
    choice = receive.downcase
    if !@move_validator.valid_move?(choice)
      present(Messages.new.invalid_input)
      validated_input
    else
      choice
    end
  end

  def valid_game_type
    game_type = receive
    if !@move_validator.valid_game_type?(game_type)
      present(Messages.new.game_mode)
      valid_game_type
    else
      game_type
    end
  end
end
