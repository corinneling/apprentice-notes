require 'minitest'

  # now that it is a cool 
class CommandLine
  def print_stuff(stuff)
    puts stuff
  end
end

class TestCommandLine < Minitest::Test

  def test_print_requires_argument
    subject_commandline = CommandLine.new
    assert_raises RuntimeError do
      subject_commandline.print_stuff
    end
  end

    def test_print_stuff_echo_stuff
      # make sure to check if you should be using $stdin or $stdout
      # originally $stdin, didn't work
      $stdout = StringIO.new
      subject_commandline = CommandLine.new
      # don't need parentheses around the string, even though it is the
      # stuff argument
      subject_commandline.print_stuff 'hello world traveler'
      # assert expected, actual
      # expected string included \n at the end, but since we need to make
      # sure the program output has \n we will create a new test for that
      assert_equal "hello world traveler", $stdout.string.chomp
    end

    def test_print_stuff_adds_newline
      $stdout = StringIO.new
      subject_commandline = CommandLine.new
      subject_commandline.print_stuff 'hello world traveler'
      # will string.slice(-1) will give us a string of 1
      # this passed first time around, but we need to make it fail
      # assert_equal "\n", $stdout.string.slice(-1)
      # change to:
      refute_equal "\n", $stdout.string.slice(-1)
    end

end

# TIP: Good testing pattern when writing tests
# The Three A's: Arrange, Act, Assert

# TIP: tests should have one assertion, b/c we want to save ourselves from
# changing the state of things, so only include one of the each A in each test

# RANDO TIP: " " support escape sequences, ' ' do not support escape sequences
# even quotes can help communicate things! *fangirl over beauty of code*
