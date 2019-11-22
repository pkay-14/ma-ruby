array = ARGV

arr = array.group_by{ |e| e }.select { |k, v| v.size > 1 }.map(&:first)
puts "common elements are: #{arr.join " "}"
