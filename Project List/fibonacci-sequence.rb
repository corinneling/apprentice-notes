# Fibonacci Sequence
# Enter a number and have the program generate the
# Fibonacci sequence to that number or to the Nth number.
# The fibonacci formula: F(n) = F(n-1) + F(n-2), n>1


def fibo max_n
  n1, n2 = 1, 1
  while n1 <= max_n
    yield n1
    n1, n2 = n2, n1 + n2
  end
end


fibo(gets.chomp.to_i) do |n|
  puts "#{n}\n"
end
