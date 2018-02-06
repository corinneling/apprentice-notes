# Find e to the Nth Digit
# Just like the previous problem, but with e instead of PI.
# Enter a number and have the program generate e up to that
# many decimal places. Keep a limit to how far the program will go.


def chosen_digit
  gets.chomp.to_i
end

def get_e
   Math::E
end

def find_e_to_digit
  p get_e.round(chosen_digit)
end

print 'Find e to what number? '
find_e_to_digit
