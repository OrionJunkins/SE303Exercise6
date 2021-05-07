def draw_button(button, foreground_color, is_dark_mode)
  print("Warning: depricated function, use button.draw")
  button.draw(foreground_color, is_dark_mode)
end

class button
  def initialize(label_text, x, y, foreground_color, is_dark_mode=false)
    @label_text = label_text 
    @x = x 
    @y = y
    @foreground_color
    @is_dark_mode = is_dark_mode
  end

  def foreground_color
    if is_dark_mode
      color - 10
    else
      color + 10
    end
  end

  button_color
    if is_dark_mode
      '#111111'
    else
      '#E0E0E0'
    end
  end

  end
  
  def draw(foreground_color, is_dark_mode)
    paint(label_text, x, y, foreground_color, button_color)
  end

end





# Smell -> Refactoring
  # Data Clumps -> Extract class
  # Feature Envy -> Move Function
  # Comments -> Extract Function