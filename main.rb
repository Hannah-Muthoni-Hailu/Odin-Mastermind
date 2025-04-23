require_relative 'board'
require_relative 'Players/human'
require_relative 'Players/computer'

def game_play
  # Initialize new board
  code_maker = Computer.new
  print code_maker.create_code

  guess = ['y', 'b', 'r', 'g']

  print code_maker.check_guess(guess)

end

game_play