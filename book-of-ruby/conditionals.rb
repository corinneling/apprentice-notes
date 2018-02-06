# you can use the negation operator two ways

!(1==1)
1!=1

# shorthand for if..then..else is ?..:
<test_condition> ? <if true do this> : <else do this>
# ex:
x == 10 ? puts "it's 10" : puts "it's some other number"

# unless tests
# opposite of if tests
# it's another way of expressing if not
unless aDay == 'Saturday' or aDay == 'Sunday'
 daytype = 'weekday'
else
 daytype = 'weekend'
end
# same as above
if !(aDay == 'Saturday' or aDay == 'Sunday')
 daytype = 'weekday'
else
 daytype = 'weekend'
end

# if and unless modifiers
# are useful when you need to repeatedly take some well-defined
# action if some condition is true
begin
 sleep
 snore
end if tired
sleep unless not tired
begin
 sleep
 snore
end unless not tired

# case statements
# you can use a comma to group multiple cases together
case i
  ...
  when 6, 7 then puts( "Yippee! It's the weekend! " )
end

# and you don't need to have the case statement condition
# be a variable, it could be an expression
case i + 1

# you can also have multiple trigger values
case i
  ...
when 1, 'Monday', 'Mon' then puts( "Yup, '#{i}' is Monday" )
end

# catch and throw
# Ruby provides a pair of methods, catch and throw, which can be
# used to break out of a block of code when some condition is met.
# catch must be followed by a symbol

# think of this as a block called :done
catch( :done ){
 # some code here
}
# and this is a block called :finished
catch( :finished ) do
 # some code here
end
