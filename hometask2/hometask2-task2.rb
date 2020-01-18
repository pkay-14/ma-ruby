class MarioGame
  require './game_module'
  include GAME_MODULE
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number


  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end

  def change_level(new_level_number)
    @level_number = new_level_number
    puts @level_number
  end

  def change_background(new_background_color)
    @background = new_background_color
  end

  def change_speed_enemies(new_speed_enemies)
    @speed_enemies = new_speed_enemies
  end

  def change_count_of_enemies(new_count_of_enemies)
    @enemies = new_count_of_enemies
  end

  def show_count_of_enemies
    "Count of enemies on level is: #{@enemies}"
  end

end

mario = MarioGame.new("standardpng",3,2,1)
#......
mario20 = MarioGame.new("finalpng",15,5,20)
def mario20.show_splash_screen
  puts "This is the Final Splash screen"
end

mario
#....
mario20