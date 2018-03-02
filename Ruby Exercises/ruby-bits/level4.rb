# active support
# to run active support after installing the gem
# /all means you want to include all of the classes
require 'active_suppot/all'

# helper methods
# arrays

array = [0, 1, 2, 3, 4, 5, 6]
# this creates a new array from the # 4
# i.e. [4, 5, 6]
array.from(4)
# this create a new array from the beginning to the #
# i.e. [0, 1, 2]
array.to(2)
# creates a new array and splits data into groups of the #
# i.e. [0, 1, 2], [3, 4, 5], [6, nil, nil]
# pads with nil
array.in_groups_of(3)
# creates a new array, splits it to create 2 diff arrays
# at the index that was passed in
# i.e. [[0, 1], [2, 3, 4, 5, 6]]
# removes the element it was split at
array.split(2)

# time
# can set the output of the time
# instead of
apocolapse = DateTime.new(2012, 12, 21, 14, 27, 45)
# you can run this
apocolypse.at_beginning_of_day
apocolypse.at_end_of_month
apocolypse.at_beginning_of_year
apocolypse.advance(time input)
apocolypse.tomorrow
apocolypse.yesterday

# hashes
options = {user: 'beep', lang: 'fr'}
new_options = {user: 'boop', land: 'ch', password: 'idk'}

# you can have the differences returned
# basically what are the differences between the options
# hash and the new options hash
options.diff(new_options)

# turns all of the keys into strings
options.stringify_keys

# sets defaults in an options hash
options = {
  user: 'beep', lang: 'fr'
}

defaults = {
  lang: 'en',
  country: 'us'
}
# will create a new array from the options hash
# if any of the defaults are not present it will
# add them
options.reverse_merge(defaults)

# removes a key
new_options = {user: 'boop', land: 'ch', password: 'idk'}
new_options.except(:password)
# or you could use this, which will give an error
# for any of the keys not included as parameters
new_options.assert_valid_keys(:user, :lang)

# background helper
# this will alternate background colors of a table
def background_class(index)
  return 'white' if index.odd?
  return 'grey' if index.even?
end

tweets.each_with_index do |tweet, index|
  puts "<div class='#{background_class(index)}'>#{tweet}</div>"
end

# ---- #
# exercises

# good example of array helper method from
def last_games(games, index)
  return games.from(index)
end
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
puts last_games(games, 1)

# good example of time helper
def anniversary(game, years)
  game[:release].advance(years: years)
end

game = {
  name: 'Contra',
  release: DateTime.new(1987, 2, 20, 0, 0, 0)
}
puts anniversary(game, 20)

# good example of the exclude helper
def exclude_character(games, character)
  return games.except(character)
end

games = {
  mario: ["Super Mario World", "Super Smash Bros. Melee"],
  luigi: ["Luigi's Mansion"],
  yoshi: ["Yoshi's Island", "Yoshi's Story"]
}
puts exclude_character(games, :yoshi)
