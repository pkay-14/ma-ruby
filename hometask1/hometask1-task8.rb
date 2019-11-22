a = ARGV
b = a.sort {|x,y| -(x <=> y)}


  print "given array is #{a}"
  print "\ndescending order of given array is #{b}"
