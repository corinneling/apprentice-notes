# Blocks, Procs, and Lambdas

# procs are objects
# 1st way of creating a proc
my_proc = Proc.new { puts "something" }
my_proc.call

# 2nd way
# below two are the same
my_proc = lambda { puts "something" }
my_proc = -> { puts "something" }

my_proc.call

# how to use a proc as an argument to an each method
tweets = [1, 2, 3]
printer = lambda { |tweet| puts tweet }
# wrong - tweets.each(printer)
tweets.each(&printer)
# & turns the proc into a block

# you can also turn a proc into a block with & put the & in
# front of the argument when you are defining a method, rather
# that what we did earlier, which was putting the & infront
# of the argument when it was called

# use a symbol when calling a proc
tweets.map { |tweet| tweet.user }
# can be refractored to this:
tweets.map(&:user)

# you can also check if a block has been passed to a method
# with the built in method:
block_given?

# current state of a local variable is preserved when a lambda is given

# also specify the lambda before you call it, it has to come first
