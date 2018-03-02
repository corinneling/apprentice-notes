from_file, to_file = ARGV
# See how short you can make the script. I could make this one line long.
# https://launchschool.com/books/ruby/read/files
File.open( from_file, "r"); File.open( to_file, "w" ) { |f| f << to_file };

# puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line, how?
# in_file = open(from_file)
# indata = in_file.read


# puts "The input file is #{indata.length} bytes long"
# puts "Does the output file exist? #{File.exist?(to_file)}"
# puts "Ready, hit RETURN to continue, CTRL-C to abort."
# $stdin.gets
# out_file = open(to_file, 'w')
# out_file.write(indata)


# out_file.close
# in_file.close
