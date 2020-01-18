class MyGame
  require './game_module'
  include GAME_MODULE
  attr_accessor :player_name, :level_number, :player_position, :ball_position

  def initialize(player_name, player_position, ball_position level_number)
    @user = player_name
    @pl_position = player_position
    @position_ball = ball_position
    @level_number = level_number
  end

end
