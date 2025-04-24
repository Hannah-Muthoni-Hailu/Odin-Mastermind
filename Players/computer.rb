class Computer
  def initialize()
    @code = Array.new
  end

  def create_code()
    colors = ['r', 'g', 'b', 'y', 'o', 'p']
    
    4.times do
      i = rand(colors.length)
      @code.push(colors[i])
      colors.delete_at(i) # Duplicate colors not allowed
    end

    return @code
  end

  def check_guess(guess)
    result = Array.new

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
    
  end
end