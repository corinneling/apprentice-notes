# Collatz Conjecture
# Start with a number n > 1. Find the number of steps it takes to reach
# one using the following process: If n is even, divide it by 2. If n
# is odd, multiply it by 3 and

def collatz n
  puts "#{n}"
  if n > 1
    if n % 2 != 0
      collatz(3*n + 1)
    else
      collatz(n/2)
    end
  end
end

collatz(gets.chomp.to_i)
