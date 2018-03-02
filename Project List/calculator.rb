# Create a calculator
#
# I want this to be able to take user input
# get at least two numbers
# subtract at least two numbers
# multiple at least two numbers
# divide at least two numbers
# show the answer

class MakeCalculation
  def set_enviro
    puts "Let\'s do some math! \nEnter your first and second values"
      choose_options = gets.split(" ")

      n1 = choose_options[0].to_i
      operator = choose_options[1].to_sym
      n2 = choose_options[2].to_i

      show_calc(n1, n2, operator)
  end


  def show_calc(n1, n2, operator)
    case operator
    when :+ then puts n1 + n2
    when :- then puts n1 - n2
    when :* then puts n1 * n2
    when :/ then puts n1 / n2
    when :% then puts n1 % n2
    else
      puts "This calculator isn't that fancy"
    end
end
end

calculate = MakeCalculation.new
calculate.set_enviro
