class MagicBall
  # ANSWERS array that will respond to Qs
  ANSWERS = [
    'The unicorns say yes.',
    'Holy Jalapeno! Looking good!',
    'Your will is weak, try again.',
    'Fat chance.',
    'The three witches say no.',
    'The stars point to yes.',
    'Psychic fell asleep, ask again later.'
  ]

  # whoa! parameters don't need paratheses
  def ask question
    # calling below method to raise
    # an error if logic not true
    raise "Question has invalid format." unless is_question_valid?(question)
    # takes a sample (or random) item from the array
    ANSWERS.sample
  end

  # storing logic in a private method
  # question must be a string and
  # have a question mark at the end
  private
  def is_question_valid?(question)
    question.is_a?(String) && question[-1] == "?"
  end
end
