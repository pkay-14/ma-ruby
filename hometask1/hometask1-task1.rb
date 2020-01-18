zne = ARGV
require 'time'
timezones = {UTC: "+00:00", GMT:"+00:00", EST: "-05:00", EEST:"+03:00"}
z = zne.join''

 case z
 when "EST"
   p = Time.now.utc.localtime(timezones[:EST])
   puts p
   # offset = timezones[:EST] * 3600

when "UTC"
  p = Time.now.utc.localtime(timezones[:UTC])
  puts p
when "GMT"
  p = Time.now.utc.localtime(timezones[:GMT])
  puts p
when "EEST"
  p = Time.now.utc.localtime(timezones[:EEST])
  puts p
 else
   puts "Enter a valid timezone in a string format. eg: 'TMZ' "
 end
