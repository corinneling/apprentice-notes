# MiniTest::Spec is a contextual RSpec-esque syntax

# We can compare the syntax of two tests that are the
# exact same, expect that one is written with Test Unit
# and one is written with Spec

# MiniTest::Unit

# assertion-based interface:
# - 1(+) classes that represent test suites
# - each test suite has 1(+) methods that define test cases
# - each test case method has code that exercises a part
# of the item under test, runs steps, and verifies the results

  require 'test/unit'

  class TestArray < Test::Unit::TestCase
    def test_array_can_be_created_with_no_arguments
      assert_instance_of Array, Array.new
    end

    def test_array_of_specific_length_can_be_created
      assert_equal 10, Array.new(10).size
    end
  end

# MiniTest::Spec
# expectations-based interface
# - domain-specific language, or DSL, for describing tests

  require 'minitest/spec'
  require 'minitest/autorun'

  describe Array do
    it "can be created with no arguments" do
      Array.new.must_be_instance_of Array
    end

    it "can be created with a specific size" do
      Array.new(10).size.must_equal 10
    end
  end

# minitest lets you create and use mock objects and stubs

# think about TDD with red-green-refactor
# make a test that fails
# write just enough code to make it pass
# refactor the code it's testing

# the order that minitest runs the tests you have is random
# b/c tests should be written so they can be run in any order

# plain assert method tests whether the first arg is truthy
# you can add optional failure message to your assert
# ex:
  assert(list.empty?, 'The list is not empty as expected.')
