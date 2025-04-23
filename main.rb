require_relative 'board'
require_relative 'Players/human'
require_relative 'Players/computer'

def game_play
  # Initialize new board
  code_breaker = Human.new

  answer = code_breaker.guess

  p answer

end

game_play