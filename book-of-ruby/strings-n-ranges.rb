# you can define your own string delimiters
# must be alphanumeric characters
# not very good practice

# all are the same
%x/some command/
%x{some command}
`some command`

# some methods change the strings w/o creating a new object
string.capitalize! # changes the original string
string.capitalize # does not change the original string

# double index technique with arrays
# first index indicates the starting positiong
# second index indicates the number of characters
an_array[1, 1]

# you can index with negaitve numbers too
# -1 would be the index of the last character

# some methods to manipulate strings

s.insert(1, "TEXT")
s.squeeze
s.split

# you can also format strings
# use printf and then the specifiers
%d – decimal number
%f – floating-point number
%o – octal number
%p – inspect object
%s – string
%x – hexadecimal number

# heredocs
# a block of text that starts by specifying an end marker

# everything following the hdoc1 = <<EODOC is a single string
# that terminates when the end marker is located
hdoc1 = <<EODOC
I wandered lonely as a #{"cloud".upcase},
That floats on high o'er vale and hill...
EODOC

# then you can call the heredoc var
puts hdoc1

# string literals
%q/ / # single-quoted
%Q/ / # double-quoted
%/ / # double-quoted
%w/ / # array
%W/ / # array double-quoted
%r| | # regular expression
%s/ / # symbol
%x/ / # operating system command
