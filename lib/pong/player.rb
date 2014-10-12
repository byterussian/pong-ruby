class Pong::Player
  def initialize(window)
    @image = Gosu::Image.new(window, "images/player.png", false)
    @x = @y = @vel_x = @vel_y = 0.0
    @score = 0
  end

  def warp(x, y)
    @x, @y = x, y
  end

  def up
    if @y > 90
      @y -= 4.5
    end
  end

  def down
    if @y < 384
      @y += 4.5
    end
  end

  def move
    @x += @vel_x
    @y += @vel_y
    @x %= 640
    @y %= 480

    @vel_x *= 0.95
    @vel_y *= 0.95
  end

  def draw
    @image.draw_rot(@x, @y, 1, 0.0)
  end
end
