class User_input

  def initialize
    Menu
  end

  def parse(input)
    arguments = input.split(' ')
    method = arguments.first

    case method
    when 'Menu'
      puts Menu
    when 'I'
      @a = grid.new(arguments[1].to_i, arguments[2].to_i)
    when 'L'
      @a.L(arguments[1].to_i, arguments[2].to_i, arguments[3])
    when 'V'
      @a.V(arguments[1].to_i, arguments[2].to_i, arguments[3].to_i, arguments[4])
    when 'H'
      @a.H(arguments[1].to_i, arguments[2].to_i, arguments[3].to_i, arguments[4])
    when "F"
      @a.F(arguments[1].to_i, arguments[2].to_i, arguments[3])
    when "S"
      @a.S
    when 'X'
      exit 0
    else
      "Not a valid command. Please try again or type Menu for a list of valid commands"
    end
  end

  def Menu
    "I m, n = New image grid m = height n = width"
    "L x, y, c = Colour a pixel x,y = co-ordinates c = colour"
    "V x, y1, y2, c = Create a vertical line from y1-y2 starting from x c = colour"
    "H x1, x2, y, c = Create a horizontal line from x1-x2 starting from y c = colour"
    "F x, y, c = Floodfill region x,y with c = colour // please don't use this method though"
    "S = Show image grid output"
    "Menu = Show this menu"
    "X = Exit"
  end
end