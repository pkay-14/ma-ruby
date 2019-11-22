require 'colorize'

colour,filename = ARGV

    file = File.open(filename, 'r')
    file.each do|line|
      print line.red
      end
    file.close
