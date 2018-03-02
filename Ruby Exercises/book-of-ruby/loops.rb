# iterating upto and downto

# displays 0 to 10
0.upto 10 do |i|
  puts i
end

# displays 10 to 0
10.downto 0 do |i|
  puts i
end

# while loops

while tired
  sleep
end

# or
while tired do sleep end

# while modifiers
# when the code to be executed precedes the test condition
# you can even execute several expressions using this syntax
sleep while tired

begin
  sleep
  snore
end while tired

# ensuring a while loop executes at least once
  x = 100
# The code in this loop never runs
  while (x < 100) do puts('x < 100') end
# The code in this loop never runs
  puts('x < 100') while (x < 100)
# But the code in loop runs once
  begin puts('x < 100') end while (x < 100)

# until lopps
# can be thought of as while not loops

# loop loops
# does not evaluate a test condition to tell if it should
# continue looping or not, you have to use the break keyword

i=0
  loop do
    puts(arr[i])
    i+=1
    if (i == arr.length) then
      break
    end
end

# each - pass to the each method a block of code. This block
# of code expects to receive one piece of data at a time

# yield - the keyword yield tells the code to run the block
# that was passed to the each method
