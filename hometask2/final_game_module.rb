module FinalGameModule
  def show_characters
    floor
    player
    pyramid
    flag
    @screen.each { |x| puts x.join}
  end

  def play
    show_characters
    until reach_pyramid? == true
      puts "Press Enter to mover player forward..."
      while input = gets do
        move_player
        exit
      end
    end
  end
  def move_player
    reset_player
    @player_position += 2
    play
  end
  def reset_player
    @screen[3][@player_position] = [' ']
    @screen[4][@player_position-1] = [' ']
    @screen[5][@player_position] = [' ']
  end
  def reach_pyramid?
    return false unless @player_position == 83 else  true
  end
end