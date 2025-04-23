require_relative 'board'
require_relative 'Players/human'
require_relative 'Players/computer'

def game_play
  # Initialize new board
  board = Board.new

  board.update_guess(['y', 'g', 'b', 'r'])
  board.update_pegs(['b', 'b'])
  puts board.win_check
  board.display
end

game_play