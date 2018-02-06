# Ruby Exceptions
# What is the Exception class in Ruby? http://ruby-doc.org/core-2.3.0/Exception.html

# when something goes wrong an exception is raised
# default action after that is to terminate the program

# exception handlers - a block of code that is executed if an
# exception occurs furing the execution of some other block of code.

# raising an exception
# stops the normal execution of the program and transfers the flow
# of control to the exception handling code

# then you can either deal with it or exit the program

# rescue clause prevents the program from terminating

def raise_exception
  puts 'I am before the raise.'
  raise 'An error has occured'
  # this string never prints
  puts 'I am after the raise'
end
# raise_exception

# the raise method is from the Kernel module
# raise creates an exception of the RuntimeError class
# to raise an exception of a specific error class you
# can pass the class name as the argument to raise

def inverse(x)
  raise ArgumentError, 'Argument is not numeric' unless x.is_a? Numeric
  1.0 / x
end
# puts inverse(2)
# puts inverse('not a number')

# you can define your own exception calsses to be more specific
# about an error

class NotInvertibleError < StandardError
end

# handling an exception
# use a begin..end blocks with one or more rescue clauses

def raise_and_rescue
  begin
    puts 'I am before the raise.'
    raise 'An error has occured.'
    # never gets run
    puts 'I am after the raise.'
  rescue # default parameter is StandardError
    puts 'I am rescued.'
  end
  puts 'I am after the begin block.'
end
# raise_and_rescue

# rescue clause
# - each one can specify multiple exceptions to catch
# - at the end of each one you can give Ruby the name of the a
# local variable to recieve the matched exception
# - parameters can be arbitrary, even method calls
# - you can stack rescue clauses as well

def an_exception
  begin
    raise 'A test exception.'
  rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
  end
end
# an_exception

# exception class defines 2 methods that return details: message & backtrace
# message - returns a string, human-friendly, w/ details about what went wrong
# backtrace - return an array of strings that represent the call stack at the
# point the exception was raised

# ensure class
# goes after the last rescuse, contains code that will always be executed as
# the block terminates - so the ensure block will always run

# common exceptions
  # RuntimeError
  # NoMethodError
  # NameError
  # IOError
  # TypeError
  # ArgumentError

  # Open and read from a text file
  # Note that since a block is given, file will automatically be closed when the block terminates
def read_from_file
  begin
    File.open('p014constructs.rb', 'r') do |f1|
      while line = f1.gets
        puts line
      end
    end

    # Create a new file and write to it
    File.open('test.rb', 'w') do |f2|
      # use "" for two lines of text
      f2.puts "Created by Satish\nThank God!"
    end
  rescue Exception => msg
    # display the system generated error message
    puts msg
  end
end

# validation example
# from the ruby cookbook
# validation of user's inputs
class Name
  # Define default getter methods, but not setter methods.
  attr_reader :first, :last
  # When someone tries to set a first name, enforce rules about it.
  def first=(first)
    if first == nil or first.size == 0
      raise ArgumentError.new('Everyone must have a first name.')
    end
    first = first.dup
    first[0] = first[0].chr.capitalize
    @first = first
  end

  # When someone tries to set a last name, enforce rules about it.
  def last=(last)
    if last == nil or last.size == 0
      raise ArgumentError.new('Everyone must have a last name.')
    end
    @last = last
  end

  def full_name
    "#{@first} #{@last}"
  end
  # Delegate to the setter methods instead of setting the instance
  # variables directly.
  def initialize(first, last)
    self.first = first
    self.last = last
  end
end

jacob = Name.new('Jacob', 'Berendes')
jacob.first = 'Mary Sue'
jacob.full_name # => "Mary Sue Berendes"
john = Name.new('john', 'von Neumann')
john.full_name # => "John von Neumann"
john.first = 'john'
john.first # => "John"
john.first = nil
# ArgumentError: Everyone must have a first name.
Name.new('Kero, international football star and performance artist', nil)
# ArgumentError: Everyone must have a last name.
