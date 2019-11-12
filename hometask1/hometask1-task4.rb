require 'objspace'

 def bool_to_str bool
   # TODO
   a = (bool ? "Yes" : "No")+" allocated memory is "
   print a
   puts ObjectSpace.memsize_of(a*24)

 end

def bool_to_int bool
  # TODO
  b = (bool ? "0" : "1") + " allocated memory is "
  print b
  puts ObjectSpace.memsize_of(b*24)

end

bool_to_str( 1==1)
bool_to_str( 1==2)

bool_to_int( 1==1)
bool_to_int( 1==2)
