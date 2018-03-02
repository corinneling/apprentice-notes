# modules
# group functions together
# namespace

# when you create functions in a file and then
# have that file required in another one, then those
# functions are thrown out into the global namespace
# could conflict with other functions

# modules fix this
# to call on the functions, prefix them with the name of the module

# common to include the module inside of a class
# this gives access to the properties from the host class

# image_utils.rb
module ImageUtils
  def preview
  end
  def transfer(desitination)
  end
end

# avatar.rb
require'image_utlis.rb'

class Image
  # module is added to the class's ancestor chain
  include ImageUtils
end

# you can call the ancestors list, which shows what the class
# has descended from
Image.ancestors

# you can also only call the modules
Image.included_modules

# ^All of that is referred to as mixins

# ---- #
# mixins v class inheritance
# a class can only have one super class
# so you are limiting the classess

# inheritance suggests specialization so unless you code is like
# the salmon and the fish example, maybe don't use inheritance

# having a bunch of classes that inherit from one parent class
# that stores the duplicate code is not always the best idea

# sometimes you should change your parent class to a module
# and include the module in your child classes

# then those child classes can include other modules as well

module Shareable
  def share_on_fb
  end
end

module Favoritable
  def add_to_delicious
  end
end

class Post
  include Shareable
  include Favoritable
end

class Image
  include Shareable
end

# instead of including a module, you can extend it
# this will expose the modules methods as class methods
# then you can still call the methods from the class

module Searchable
  def find_all_from(user)
  end
end

class Tweet
  extend Searchable
end

Tweet.find_all_from('@GreggPollack')

# NEED A LITTLE MORE CLARIFICATION
# include module - expose modules methods as instance methods
# extend module - expose module methods as class methods

# you can also have an object extend a module
# if you don't include image.extend(Module), you will get an error
# you need the module talking to something always

module ImageUtils
  def preview
  end
end

class Image
end

image = Image.ne
image.extend(ImageUtils)
image.preview



# hooks
# extend methods and instance and class methods from a module
# within a module

module ImageUtils

  def preview
  end

  def transfer(destination)
  end

  module ClassMethods
    def fetch_from_tweet
    end
  end
end

# a better way to do this would be to use a method hook
# method hook are automatically triggered in ruby when given an event
class Image
  include ImageUtils
  extend ImageUtils::ClassMethods
end

# original code w/ a method hook
module ImageUtils
  # self.included method hook
  # will be run when a module is included in a class
  # takes the host class as the argument
  def self.included(base)
    base.extend(ClassMethods)
  end

  def preview
  end

  def transfer(destination)
  end

  module ClassMethods
    def fetch_from_tweet
    end
  end
end

class Image
  include ImageUtils
  # we don't need the extend anymore
  # extend ImageUtils::ClassMethods
end
