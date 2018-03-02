i = 0
numbers = []

while i.between?(1,6)
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num }
# 1:
numbers.each do |num|
  puts num
end
# 2:
for numbers in num
  puts num
end
