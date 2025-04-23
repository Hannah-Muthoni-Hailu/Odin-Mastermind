class Board
  def initialize()
    @board = {
      :code => ["_", "_", "_", "_"],
      :guess_and_pegs => Array.new()
    }

    12.times do
      @board[:guess_and_pegs].push([["_", "_", "_", "_"], ["_", "_", "_", "_"]])
    end
    @plays = 0
  end

  def display()
    puts " "
    @board[:guess_and_pegs].each_with_index do |arr, index|
      puts arr[0].join(" ") + " #{index + 1} " + arr[1].join(" ")
    end
    puts " "
  end

  def update_guess(guess)
    @board[:guess_and_pegs][@plays][1] = guess
  end

  def update_pegs(pegs)
    @board[:guess_and_pegs][@plays][0][0, pegs.length] = pegs
  end

  def win_check
    result =  @board[:guess_and_pegs][@plays][0] == ['b', 'b', 'b', 'b']
    @plays += 1
    return result
  end
end