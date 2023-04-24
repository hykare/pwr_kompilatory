while true
  puts 'enter text:'
  input = gets.chomp

  p input.gsub(/[,.](?! )/, '\0 ')
  puts
end
