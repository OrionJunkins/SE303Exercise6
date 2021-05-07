class label
  attr_reader :label_text, :x, :y, :foreground_color, is_dark_mode?
  def initialize(label_text, x, y, foreground_color, is_dark_mode)
    @label_text, 
    @x = x
    @y = y 
    @foreground_color = foreground_color
    @is_dark_mode = is_dark_mode
  end

  def paint_dark
    paint(label_text, x, y, foreground_color - 10, '#111111')
  end

  def paint_light
    paint(label_text, x, y, foreground_color + 10, '#E0E0E0')
  end
end

def draw_button(label)
  if label.is_dark_mode
    label.paint_dark
  else
    label.paint_light
  end
end



# Smell -> Refactoring
# Comments
# Data clumps -> Extract Class
# Duplicated code -> Extract function
# Primitive Obsession