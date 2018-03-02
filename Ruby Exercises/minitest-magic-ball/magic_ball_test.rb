require 'minitest/autorun'
require_relative 'magic_ball'

# every test file is a class
# test to see if a question will return an answer
class MagicBallTest < Minitest::Test
  def test_ask_returns_an_answer
    magic_ball = MagicBall.new
    # syntax = assert expected, actual
    # think EA except not stupid
    # returns a false positive...
    # assert magic_ball.ask('whatever') != nil
    assert_includes MagicBall::ANSWERS, magic_ball.ask('are dragons real?')
  end

  # test to see if we can return meaningful answers
  # this test passes, but the array is empty, we need
  # to make sure it isn't
  def test_predefined_answers_is_array
    # assert expects a truthy answer
    assert_kind_of Array, MagicBall::ANSWERS
  end

  # test to see if the array is empty
  def test_predefined_answers_is_not_empty
    # refute expects a falsey value
    refute_empty MagicBall::ANSWERS
  end

  # test to validate question is a string
  def test_raises_error_when_question_is_number
    # assert_raises expects the block will raise an error
    assert_raises "Question has invalid format." do
      magic_ball = MagicalBall.new
      magic_ball.ask(1)
    end
  end
end

# remember the 3 A's: Arrange -> Act -> Assert

# create tests like you create methods normally
# small chunks that handle one piece of logic
# once you need to test an additional aspect, make
# a new test, don't add that stuff to an already
# created test
