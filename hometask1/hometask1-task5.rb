filename = ARGV[0]
line = ARGV[1]

def get_line_number(file, word)
  line_num = File.foreach(file).with_index do |line, index |
    break index + 1 if line.include? word

  end

   line_num unless line_num.nil?
end

b = get_line_number(filename, line)
if b.nil?
  puts "'#{line}' does not exist in the file '#{filename}'"
else
  puts "line number of '#{line}' where first encountered in '#{filename}' is #{b}"
end
