#  copy one file to another.

open(ARGV[1], 'w').write(open(ARGV[0]).read)

# create two CLI arguments
# open one, and read it
# open the other
# write the content from the first arg into the second one

first_file, second_file = ARGV

store_content = open(first_file.read)
