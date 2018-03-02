# Prime Factorization
# Have the user enter a number and find all Prime Factors
# (if there are any) and display them.


# this is not working how I want it to
# i'll come back to it later
def prime_factors num
  ((2...num).select {|n| num % n == 0}).uniq
end

puts "For what number do you want to find the prime factors? "
puts prime_factors(12)
