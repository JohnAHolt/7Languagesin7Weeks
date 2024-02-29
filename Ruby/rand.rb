num = rand(10)

while true 
  puts "Enter your guess:"
  guess_str = gets.chomp
  guess = guess_str.to_i

  if guess > num 
    puts "lower"
  elsif guess == num
    puts "got it!"
  else
    puts "higher"
  end
end