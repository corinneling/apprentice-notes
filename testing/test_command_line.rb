# this hasn't been set up yet, needs to be set up first
require 'minitest'

  # after running these tests we decide if this class earns itself as a
  # permanent part of our program, so far no dice
  class CommandLine(stuff)
    def print_stuff
    end
  end

# test command line inherits from the minitest module, test submodule
  class TestCommandLine < Minitest::Test
    # to test that everything is working properly
    # that everything is talking with each other correctly
    def test_true
      assert true
    end

    # tests that the commandline is printing something
    def test_print_requires_argument
      # creating a new instance of this class
      subject_commandline = CommandLine.new
      # will the CommandLine class print anything?
      # lets see!
      # ---- #
      # always make sure you are running the right error
      # i.e. Runtime Error, NoMethodError, ArgumentError etc.
      assert_raises RuntimeError do
        subject_commandline.print_stuff
      end
      end

    end
  end


  # TIP: be descriptive with your tests

  # TIP: make sure to break your tests to make sure there is
  # not some underlining issue you are missing

  # TIP: if you are not sure if the test is going to past, run it to see

  # TIP: once the test passes, see if you can do any refractoring

  # ---- #

  # IO - swiss army knife for doing things with input and output
  # String IO - next step - see 'text_command_line_STIO.rb'
