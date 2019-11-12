filename = ARGV[0]
line = ARGV[1]

def get_line_number(file, word)
  line_num = File.foreach(file).with_index do |line, index |
    break index + 1 if line.include? word
  end
  return line_num unless line_num.nil?
end

# path = File.expand_path(File.dirname(__FILE__))
# path << filename

b = get_line_number("#{__dir__}/#{filename}", line)
puts "line number of '#{line}' where first encountered in '#{filename}' is #{b}"
