# Find PI to the Nth Digit
# Enter a number and have the program generate PI up to that many
# decimal places. Keep a limit to how far the program will go.


def chosen_digit
  return gets.chomp.to_i
end

def get_pi
  return Math::PI
end

def find_pi_to_digit
  p get_pi.round(chosen_digit)
end

print 'Find PI to what number? ' 
find_pi_to_digit
