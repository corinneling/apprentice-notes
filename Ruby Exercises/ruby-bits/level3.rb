# classes are all about encapsulation
# sending data in strings and integers breaks encapsulation

tweet = Tweet.new
tweet.status = "practicing ruby"
tweet.owner_id = current_user.id

send_tweet(tweet)

# this way we pass an object instead of the tweet as a string
def send_tweet(message)
  message.owner
  ...
end

# visibility
# everything is by default public in ruby
# one way to fix this is to put 'privite'
# above what method you want private

class User
  def up_vote(friend)
    #...
  end

  #private - one way of doing it but
  # private methods in ruby can't be called
  # with an explicit reciever

  protected
  # hidden from public but still accessible
  def bump_karma
    #...
  end
end

# inheritance
# you can add attr_accessor to child classes
# if you want one that only applies to a certiain
# subclass

# super method
# when you want the constructor from the parent
# class to be called
# super will look for a method by the same name
# from the parent classes

class User
  def initialize(name)
    @name = name
  end
end

class Follower < User
  def initialize(name, following)
    @following = following
    super(name) # looks for the name method in the parent class
  end
  def relationship
    "#{@name} follows #{@following}"
  end
end

# if there is ever any repetition make a new method and store
# that repetitive code in there
# also check for spelling errors before freaking out

# ---- #
# exercises
# this is a good example of how to pass data but not through strings

def add_game(game)
  @games << game
  log("here's some info #{message}")
end

def log(message)
  puts message
end

# this is a good example of a subclass set to have the same
# parameters for the initialize method as the parent class
# while including a new parameter

class ArcadeGame < Game
  attr_accessor :weight
  # parameters from parent class 'Game'
  def initialize(name, options={})
    super
    # new parameter
    self.weight = options[:weight]
  end
end

# took the to_s method from Game and made it so it will
# show the system when using the ConsoleGame class

class ConsoleGame < Game
  def to_s
    "#{self.name} - #{self.system}"
  end
end

# CONFUSED
class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at
  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end

  def to_s
    self.name
  end

  def description
    "#{self} was released in #{self.year}."
  end
end

class ConsoleGame < Game
  def to_s
    "#{self.name} - #{self.system}"
  end

  def description
    "#{self.name} - #{self.system} was released in #{self.year}."
  end
end

# WHY DID THAT TURN INTO THIS????
class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at
  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end

  def to_s
    self.name
  end

  def description
    "#{self} was released in #{self.year}."
  end
end

class ConsoleGame < Game
  def to_s
     "#{self.name} - #{self.system}"
  end
end
