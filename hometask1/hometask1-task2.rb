require 'colorize'

colour = ARGV[0]
filename = ARGV[1]

 #filename.each{|filename| IO.readlines(filename).each{|line|puts line}}

 #file = '\mytext.txt'


  path = File.expand_path(File.dirname(__FILE__))
  path << filename

  file = File.open(path, 'r')
  file.each do|line|
    puts line.colorize(:colour)
  end
    file.close
