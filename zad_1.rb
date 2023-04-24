while true
  puts 'enter binary number'
  number = gets.chomp

  power_of_two = number =~ /\b0*10*\b/

  unless power_of_two.nil?
    puts 'power of 2'
  else
    puts 'not power of 2'
  end
  puts
end
