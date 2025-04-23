class Human
  def guess
    while true
      puts "Please enter a guess. Present colors are: red = r green = g blue = b yellow = y o = orange p = pink"
      puts "Please enter the letters above seperated by commas"

      colors = ['r', 'g', 'b', 'y', 'o', 'p']
      player_guess = gets.chomp.split(",").collect{ |e| e.strip }
      if player_guess.length == 4 && (player_guess - colors).empty?# Check that an appropriate guess has been entered
        return player_guess
      else
        puts "Wrong input. Enter again"
      end
    end
  end
end