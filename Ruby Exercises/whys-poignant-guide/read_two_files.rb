# The method opens two files and slides the resulting IO objects down the
# chute to an attached block.
def double_open pigs, corn
  open( pigs ) do |f1|
    open( corn ) do |f2|
      yield f1, f2
    end
  end
end

# Prints the files out side-by-side.
double_open( "idea-pigs.txt", "idea-corn.txt" ) do |f1, f2|
  puts f1.readline + " | " + f2.readline
end
