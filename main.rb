require_relative 'board'
require_relative 'Players/human'
require_relative 'Players/computer'

def game_play
  # Initialize new board
  board = Board.new

  # Initialize code maker and breaker
  code_maker = Computer.new
  code_breaker = Human.new

  # Set code
  board.save_code(code_maker.create_code)

  12.times do
    # Display board
    board.display

    # Obtain guess and update board with guess
    player_guess = code_breaker.guess
    board.update_guess(player_guess)
    
    # Obtain pegs and update board
    pegs = code_maker.check_guess(player_guess)
    board.update_pegs(pegs)

    # Check win
    if board.win_check then return "Code Breaker has won" end
  end

  # Code Maker has won if loop exits
  board.display
  p board.code # Display code to code breaker
  return "Code Maker has won"
end

puts game_play