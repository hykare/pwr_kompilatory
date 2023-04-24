while true
  puts 'enter ip address to validate:'
  ip_address = gets.chomp

  valid = ip_address =~ /^(25[0-5]|2[0-4][0-9]|1[0-9]?[0-9]?|[1-9][0-9]?)(\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}/
  unless valid.nil?
    puts '✓ valid'
  else
    puts '✗ invalid'
  end
  puts
end
