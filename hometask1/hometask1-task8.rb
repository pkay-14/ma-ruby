a = [23,4,56,1,9,4,76,2]
b = a.sort {|x,y| -(x <=> y)}


  print "given array is #{a}"
  print "\ndescending order of given array is #{b}"
