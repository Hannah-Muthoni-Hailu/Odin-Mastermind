# frozen_string_literal: true

# Controls the human player
class Human
  def guess
    loop do
      puts 'Please enter a guess. Present colors are: red = r green = g blue = b yellow = y o = orange p = pink'
      puts 'Please enter the letters above seperated by commas'

      colors = %w[r g b y o p]
      res = check_input(colors)
      return res if res != 'Wrong input'

      puts 'Wrong input. Enter again'
    end
  end

  def create_code
    loop do
      puts 'Please enter a code. Present colors are: red = r green = g blue = b yellow = y o = orange p = pink'
      puts 'Please enter the letters above seperated by commas'

      colors = %w[r g b y o p]
      res = check_input(colors)
      return res if res != 'Wrong input'

      puts 'Wrong input. Enter again'
    end
  end

  def check_guess(guess)
    loop do
      p "Cmmputer guess is #{guess.join(',')}"
      puts 'Please check the computer\'s guess and enter a "b" for every correct color in the correct position or a "w"
for a correct color in the wrong position or press enter if none is correct'
      puts 'Please enter the letters above seperated by commas'

      colors = %w[b w]
      pegs = gets.chomp.downcase.split(',').collect(&:strip)
      return pegs if pegs.empty? || (pegs - colors).empty? # Check that a valid input has been entered

      puts 'Wrong input. Enter again'
    end
  end

  def check_input(colors)
    player_inp = gets.chomp.downcase.split(',').collect(&:strip)
    player_inp.length == 4 && (player_inp - colors).empty? ? player_inp : 'Wrong input'
  end
end
