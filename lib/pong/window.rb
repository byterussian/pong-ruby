class Pong::Window < Gosu::Window
  def initialize
    super(640, 480, false)
    self.caption = 'Welcome to Pong!'
  end
end

