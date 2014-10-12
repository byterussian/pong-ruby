class Pong::Ball
  def initialize(window)
    @image = Gosu::Image.new(window, "images/ball.png", false)
    @x = @y = 0.0
    @vel_x = 6
    @vel_y = 2
    @score = 0
  end

  def warp(x, y)
    @x, @y = x, y
  end

  def move
    @x += @vel_x
    @y += @vel_y
    top_x = @x - 5;
    top_y = @y - 5;
    bottom_x = @x + 5;
    bottom_y = @y + 5;

    # hitting the left wall
    if @x - 5 < 35
      @x = 40;
      @vel_x = -@vel_x;
      # hitting right wall
    elsif @x + 5 > 605
      @x = 600;
      @vel_x = -@vel_x;
    end

     # hitting the top wall
    if @y - 5 < 50
      @y = 55;
      @vel_y = -@vel_y;
      # hitting right wall
    elsif @y + 5 > 425
      @y = 420;
      @vel_y = -@vel_y;
    end



      end

      def draw
        @image.draw_rot(@x, @y, 1, 0.0)
      end
    end
