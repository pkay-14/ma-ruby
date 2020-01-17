class Game
  require './final_game_module.rb'
  include FinalGameModule
  def initialize
    @screen = Array.new(7) {Array.new(100,' ')}
    @player_position = 1
    @position = 1
  end

  def floor
    @screen[6][0] = ['#']*100
  end

  def player
    @screen[3][@player_position] = ['#']*2
    @screen[4][@player_position-1] = ['#'] * 4
    @screen[5][@player_position] = ['#'] * 2
  end

  def flag
    unless reach_pyramid? == false
    @screen[0][@position + 85] = ['#']*4
    @screen[1][@position +85] = ['#']*4
    @screen[2][@position +88] = ['#']
    end
  end

  def pyramid
    @screen[3][@position+86] = ['#']*3
    @screen[4][@position+83] = ['#']*5
    @screen[5][@position+84] = ['#']*7
  end


end

Game.new.play