# ARGV is the argument variable
first, second, third = ARGV

puts "Your first variable is: #{first}"
first = $stdin.gets.chomp
puts "Your second variable is: #{second}"
second = $stdin.gets.chomp
puts "Your third variable is: #{third}"
third = $stdin.gets.chomp

# in the command line type give this file arguments
# ex) ruby ex13.rb one-eyed purple people-eater
