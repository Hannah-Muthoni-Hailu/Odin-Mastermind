# frozen_string_literal: true

require_relative 'board'
require_relative 'Players/human'
require_relative 'Players/computer'

def game_play
  # Initialize new board
  board = Board.new

  # Ask player if they want to be codemaker or codebreaker
  puts "Do you want to be codemaker or codebreaker? (Select 'M' for codemaker and 'B' for codebreaker)"
  choice = gets.chomp.upcase

  # Initialize code maker and breaker
  if choice == 'B'
    code_maker = Computer.new
    code_breaker = Human.new
  else
    code_maker = Human.new
    code_breaker = Computer.new
  end

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
    return 'Code Breaker has won' if board.win_check
  end

  # Code Maker has won if loop exits
  board.display
  p board.code # Display code to code breaker
  'Code Maker has won'
end

puts game_play
