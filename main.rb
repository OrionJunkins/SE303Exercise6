def draw_button(label_text, x, y, foreground_color, is_dark_mode)
  button = Button.new(label_text, x, y, foreground_color, is_dark_mode)
  print("Warning: depricated function, use button.draw")
  button.draw()
end

class Color
  attr_accessor :color_hex_code

  def initialize(color_hex_code)
    @color_hex_code = color_hex_code
  end
end

class Button
  @@dark_mode_default_color = Color.new('#111111')
  @@light_mode_default_color = Color.new('#E0E0E0')

  def initialize(label_text, x, y, foreground_color, is_dark_mode=false)
    @label_text = label_text 
    @x = x 
    @y = y
    @foreground_color
    @is_dark_mode = is_dark_mode
  end

  def foreground_color
    if is_dark_mode
      foreground_color - 10
    else
      foreground_color + 10
    end
  end

  def button_color
    if is_dark_mode
      dark_mode_default_color.color_hex_code
    else
      light_mode_default_color.color_hex_code
    end
  end

  def draw()
    paint(label_text, x, y, foreground_color, button_color)
  end

end





# Smell -> Refactoring
  # Data Clumps -> Extract class
  # Feature Envy -> Move Function
  # Comments -> Extract Function
  # Primitive obsession -> Extract Class