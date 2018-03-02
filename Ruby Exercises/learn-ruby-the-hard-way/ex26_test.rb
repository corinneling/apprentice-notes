module Ex26

  # This function will break up words for us.
  def Ex26.break_words(stuff)
    puts stuff.split(' ')
  end

  # Sorts the words.
  def Ex26.sort_words(words)
    return words.sort
  end

  # Prints the first word after popping it off.
  def Ex26.print_first_word(words)
    puts words.pop(1)
  end

  # Prints the last word after popping it off.
  def Ex26.print_last_word(words)
    puts words.pop
  end

  # Takes in a full sentence and returns the sorted words.
  def Ex26.sort_sentence(sentence)
    words = Ex26.break_words(sentence)
    return Ex26.sort_words(words)
  end

  # Prints the first and last words of the sentence.
  def Ex26.print_first_and_last(sentence)
    words = Ex26.break_words(sentence)
    Ex26.print_first_word(word)
    Ex26.print_last_word(words)
  end

  # Sorts the words then prints the first and last one.
  def Ex26.print_first_and_last_sorted(sentence)
    words = Ex26.sort_sentence(sentence)
    Ex26.print_fist_word(words)
    Ex26.print_last_word(words)
  end



puts "Let's practice everything."
puts "You'd need to know about escapes with \\ that do \n newlines and \t tabs."

poem = <<END
"\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none."
END

puts "--------------"
puts poem
puts "--------------"


five = (10 - 2) - (6 - 3)
puts "This should be five: #{five}"

def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
  beans, jars_crates = secret_formula(10000)
end


start_point = 10000
beans, jars_crates = secret_formula(10000)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans beans}, #{jars} jars, and #{crates} crates."

start_point = start_point / 10

sentence = "All good things come to those who wait."
words = Ex26.break_words(sentence)
sorted_words = Ex26.sort_words(words)
Ex26.print_first_word(words)
Ex26.print_last_word(words)
Ex26.print_first_word(sorted_words)
Ex26.print_last_word(sorted_words)
sorted_words = Ex26.sort_sentence(sentence)
Ex26.print_first_and_last(sentence)
Ex26.print_first_and_last_sorted(sentence)
end
