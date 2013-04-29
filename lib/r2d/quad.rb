# quad.rb

class Quad
  # x1,y1 == top left
  # x2,y2 == top right
  # x3,y3 == bottom left
  # x4,y4 == bottom right
  attr_reader :color,
              :x1, :y1, :c1,
              :x2, :y2, :c2,
              :x3, :y3, :c3,
              :x4, :y4, :c4
  
  # TODO: Change order to top/left, top/right, bottom/right, bottom/left?
  def initialize(x1, y1, x2, y2, x3, y3, x4, y4, c="white", visible=true)
    @x1, @y1, @x2, @y2, @x3, @y3, @x4, @y4, @color = x1, y1, x2, y2, x3, y3, x4, y4, c
    update_color(c)
    if visible then add end
  end
  
  def color=(c)
    @color = c
    update_color(c)
  end
  
  def add
    R2D::Window.add(self)
  end
  
  def remove
    R2D::Window.remove(self)
  end
  
  private
  
  def update_color(c)
    r, g, b, a = R2D::Color.rgba(c)
    @c1 = R2D::Window.get_color(r, g, b, a)
    @c2 = R2D::Window.get_color(r, g, b, a)
    @c3 = R2D::Window.get_color(r, g, b, a)
    @c4 = R2D::Window.get_color(r, g, b, a)
  end
end
