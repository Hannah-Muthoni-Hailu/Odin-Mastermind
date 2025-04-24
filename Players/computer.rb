# frozen_string_literal: true

# Controls the computer player
class Computer
  def initialize
    @code = []
  end

  def create_code
    colors = %w[r g b y o p]
    4.times do
      i = rand(colors.length)
      @code.push(colors[i])
      colors.delete_at(i) # Duplicate colors not allowed
    end

    @code
  end

  def check_guess(guess)
    result = []

    guess.each_with_index do |val, index|
      if val == @code[index]
        result.push('b')
      elsif @code.include?(val)
        result.push('w')
      end
    end

    result
  end

  def guess
    # Select random colors
    comp_guess = []

    colors = %w[r g b y o p]
    4.times do
      i = rand(colors.length)
      comp_guess.push(colors[i])
      colors.delete_at(i) # Duplicate colors not allowed
    end

    comp_guess
  end
end
