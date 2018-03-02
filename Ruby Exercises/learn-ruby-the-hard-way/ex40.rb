# -----------------------------------------------------

mystuff = {'apple' => "I AM APPLES!"}
puts mystuff['apple'] # outputs I AM APPLES

# -----------------------------------------------------

module MyStuff
    def MyStuff.apple()
        puts "I AM APPLES!"
    end
    # this is just a variable
    TANGERINE = "Living reflection of a dream"
end

MyStuff.apple() # does the same thing, outputs I AM APPLES
puts MyStuff::TANGERINE # outputs living reflection...

# -----------------------------------------------------
# mystuff['apple'] # get apple from the hash
# MyStuff.apple() # get apple from the module
# MyStuff::TANGERINE # same thing, it's just a variable
# -----------------------------------------------------

class OtherStuff
    def initialize()
        @tangerine = "And now a thousand years between"
    end
    attr_reader :tangerine
    def apple()
        puts "I AM CLASSY APPLES!"
    end
end

# see the class that you made and is like:
# woohoo i see the class you are talking about, im going to use that to make an object
# classes are like teachers - they create smart, capable people (objects in this case)
# modules are like the school, they hold that class and anything else that might help
# the objects do their thing
thing = OtherStuff.new()
# thing is going to have all of the methods/functionality that OtherStuff has
# we need to tell thing exactly what it wants to use from these though
thing.apple()
# this says, ooh that tangerine variable looks fine
# bring it over here, so i can eat it up
puts thing.tangerine
