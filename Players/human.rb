class Human
  def guess
    puts "Please enter a guess. Present colors are: /n
    red = r
    green = g
    blue = b
    yellow = y
    o = orange
    p = pink"
    puts "Please enter the letters above seperated by commas"

    return gets.chomp.split(",")
  end
end