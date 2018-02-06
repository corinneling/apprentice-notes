# Fibonacci Sequence
# Enter a number and have the program generate the
# Fibonacci sequence to that number or to the Nth number.
# The fibonacci formula: F(n) = F(n-1) + F(n-2), n>1


# def fib n
#    puts "#{n}"
#   if n > 1
#     x = (fib(n - 1))+(fib(n - 2))
#     return x
#   else
#     n
#   end
# end
#
# print "what number of fibonacci do you want? "
# puts fib(12)

# def fib(n)
#   n.times.each_with_object([0,1]) {
#     |num, obj| obj << obj[-2] + obj[-1]
#   }
# end
# puts fib(10)

def fib_r(a, b, n)
  n == 0 ? a : fib_r(b, a + b, n - 1)
end

def fib(n)
  fib_r(0, 1, n)
end

i = gets.chomp.to_i
p (0..i).map{ |n| fib(n) }

----------------------------

def fib_upto(max)
  i1, i2 = 1, 1
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end

fib_upto(5) {|f| print f, " "}

----------------------------

def fibo(n) a=0 b=1 for i in 0..n c=a+b print "#{c} " a=b b=c end

end
