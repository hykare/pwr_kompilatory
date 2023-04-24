def power_of_two?(number)
  match = number =~ /\b0*10*\b/
  !match.nil?
end
