require 'rubygems'
require 'bundler/setup'

require 'gosu'

module Pong
  require_relative 'pong/window'
  require_relative 'pong/player'
  require_relative 'pong/ball'

  def self.start
    window = Pong::Window.new
    window.show
  end
end

