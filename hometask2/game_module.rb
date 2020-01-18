module GAME_MODULE

  def show_player
    "Player name is: #{@player_name}"
  end
  def show_player_position
    "Current player position is: #{@player_position}"
  end
  def show_ball
    "Current ball position is: #{@ball_position}"
  end
  def show_level
    "Current level of game is: #{@level_number}"
  end

  def change_level(new_level_number)
    @level_number = new_level_number
  end

  def change_background(new_background_color)
    @background = new_background_color
  end

end