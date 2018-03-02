# y and x will output the same thing
y = %w( this is an array of strings )
x = ["this", "is", "an", "array", "of", "strings"]

# Array.new is creating a new array object

# copy arrays
# array2 becomes a copy of array1
array2=array1.clone

# comparison operator for arrays
<=>
# such as in
# -1 would be returned b/c the 1st array is less than the second array
[0,10,20] <=> [0,20,20]

# sorting arrays
# sort method compares adjacent array elements using the comparison operator
sorted_arr = arr.sort{
 |a,b|
 a.to_s <=> b.to_s
}
p(sorted_arr)
