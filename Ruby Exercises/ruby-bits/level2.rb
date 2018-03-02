
# optional arguments
def tweet(message, lat, long)
  #...
end
# we don't want to have to set these 2 arguments to nil
tweet("practicing ruby!", nil, nil)
#
# with default arguments
#
# set the defaults when you create your method
def tweet(message, lat = nil, long = nil)
  #...
end
# then you only have to include the message
tweet("practicing ruby!")



# too long of a parameter list and limits functionality
def tweet(message, lat = nil, long = nil, reply_id = nil)
  #...
end
#
# use the option hash
#
def tweet(message, options = {}) # options = {} is the hash argument
  status = Status.new
  status.lat = options[:lat] # each item in [] that starts with : are reference keys from hash
  status.long = options[:long]
  status.body = options[:body]
  status.reply_id = options[:reply_id]
  status.post
end

# keys are optional
# hash is optional

# refractor
# original code
def get_tweets(list)
  if list.authorized?(@user)
    list.tweets
  else
    []
  end
end

tweets = get_tweets(my_list)
  if tweets.empty?
    alert "no tweets found!" +
    "are you authorized?"
  end

# refractored code
def get_tweets(list)
  unless list.authorized?(@user)
      raise AuthorizationException.new
  end
  list.tweets
end

# you need to raise the authorization exceptions
# somewhere and have a place that creates it with
# begin and rescue
begin
  tweets = get_tweets(my_list)
rescue AuthorizationException
    warn "You are not authorized."
end

# splat argument

def mention(status, *names)
  # ...
end

# classes
# example of why they are important
user_names = [
  ["ashton", "kutcher"],
  ["wil", "wheaton"],
  ["Madonna"]
]

user_names.each do |n|
  puts "#{n[1]}, #{n[0]}"
end

# output will be
# Kutcher, Ashton
# Wheaton, Wil
# , Madonna

# ^ bad

# use a class to fix it
class Name
  def initialize(first, last = nil)
    # state of the data
    @first = first
    @last = last
  end
  def format
    # behavior of the data
    [@last, @first].compact.join(', ')
  end
end
# then you can add data to the name class
user_names = []
user_names = Name.new('Ashton', 'Kutcher')
user_names = Name.new('Wil', 'Wheaton')
user_names = Name.new('Madonna')

user_names.each do
  |n| puts n.format
end
#whoohoo we have a beautiful output of data now

# ---- #
# are we oversharing data?

class Tweet
  # creates a getter and a setter
  # shorthad for a method
  # attr_accessor :status, :created_at
  #
  # better code ...
  attr_accessor :status
  attr_reader :created_at
  def initialize(status)
    @status = status
    @created_at = Time.new
  end
end

# we dont want anyone to be able to set the
# created_at to a different value
# use the attr_reader instead of the attr_accessor

# --- #
# re-open class

tweet = Tweet.new("Eating lunch.")
puts tweet.to_s #this will output an unreadble string

# this is a better way to do it
# re-opening the Tweet class
class Tweet
  def to_s
    "#{@status}\n#{@created_at}"
  end
end
tweet = Tweet.new("making breakfast")
puts tweet.to_s

# ---- #
# self

class UserList
  attr_accessor :name
  def initialize(name)
    # self calls the equal function that the
    # attr_accessor gave us
    self.name = name
  end
end

# exercises
# options hash
def new_game(name, options = {})
  {
    name: name,
    system: options[:system],
    year: options[:year]
  }
end
# when using an options hash, make sure to put the key
# in the data as well i.e. system: SNES
game = new_game("Street Figher II", system: "SNES", year: 1992)

# tip = if you are ever having a hard time just
# go with the simplest answer

# splat arguments
# original code w/ no splat
def describe_favorites(games)
  for game in games
    puts "Favorite Game: #{game}"
  end
end
describe_favorites(['Mario', 'Contra', 'Metroid'])

# how to refactor it to have a splat argument
# 1. add asterick
# 2. get rid of square brackets
def describe_favorites(*games)
  for game in games
    puts "Favorite Game: #{game}"
  end
end
describe_favorites('Mario', 'Contra', 'Metroid')

# classes
# you have have an options hash in an initialize method
# like so...
class Game
  def initialize(name, options={})
    @name = name
    @system = options[:system]
    @year = options[:year]
  end
end
