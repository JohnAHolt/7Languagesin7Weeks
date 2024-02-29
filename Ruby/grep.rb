def simple_grep(file_path, phrase)
  File.open(file_path, 'r') do |file|
    file.each_line do |line|
      puts "#{file.lineno}: #{line}" if line =~ /#{Regexp.escape(phrase)}/
    end
  end
end

while true 
  puts "Enter your file path:"
  file_path = gets.chomp
  puts "Enter your phrase:"
  phrase = gets.chomp

  simple_grep(file_path, phrase)
end