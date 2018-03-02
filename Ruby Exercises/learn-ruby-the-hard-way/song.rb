# create a class named Song
  class Song

# what is this? what is happening exactly?
# i get that a class variable is being initialized
# but what does that mean?!
    def initialize(lyrics) # this is the method initialize, with the argument lyrics
      @lyrics = lyrics # class variable lyrics = lyrics
    end # end method

    def sing_me_a_song() # create a method
      # go through lyrics item and output it
      @lyrics.each { |line| puts line }
    end # end a method
  end # end class Song

  # creates an object with 3 lines
  happy_bday = Song.new(["Happy", "Birthday", "Happy Bday to you", "Huzzah!"])

  # creates an object with 3 lines
  unicorn_parade = Song.new(["They prance", "and prance", "and dance around."])

  # object happy bday
  # have object use the method it got from the class
  happy_bday.sing_me_a_song()

  # object happy bday
  # have object use the method it got from the class
  unicorn_parade.sing_me_a_song()
