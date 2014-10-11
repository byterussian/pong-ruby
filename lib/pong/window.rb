class Pong::Window < Gosu::Window
  def initialize
    super(640, 480, false)
    self.caption = 'Welcome to Pong!'
    @background_image = Gosu::Image.new(self, "images/background.png", true)

    @player = Pong::Player.new(self)
    @player.warp(50, 200)
    @player2 = Pong::Player.new(self)
    @player2.warp(590, 300)
  end

  def draw
    @background_image.draw(0, 0, 0)
    @player.draw
    @player2.draw
  end

  def update
    if button_down? Gosu::KbUp or button_down? Gosu::GpUp then
      @player.up
    end
    if button_down? Gosu::KbDown or button_down? Gosu::GpDown then
      @player.down
    end
    @player.move
  end

  def button_down(id)
    if id == Gosu::KbEscape
      close
    end
  end
end

