# frozen_string_literal: true

# Controls the board
class Board
  def initialize
    @board = {
      guess_and_pegs: []
    }

    12.times do
      @board[:guess_and_pegs].push([%w[_ _ _ _], %w[_ _ _ _]])
    end
    @plays = 0
  end

  def display
    puts ' '
    @board[:guess_and_pegs].each_with_index do |arr, index|
      puts arr[0].join(' ') + " #{index + 1} " + arr[1].join(' ')
    end
    puts ' '
  end

  def code
    @board[:code]
  end

  def save_code(code)
    @board[:code] = code
  end

  def update_guess(guess)
    @board[:guess_and_pegs][@plays][1] = guess
  end

  def update_pegs(pegs)
    @board[:guess_and_pegs][@plays][0][0, pegs.length] = pegs
  end

  def win_check
    result =  @board[:guess_and_pegs][@plays][0] == %w[b b b b]
    @plays += 1
    result
  end
end
