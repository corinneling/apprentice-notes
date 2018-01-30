# bad code
# nil is already treated as false when it comes to conditionals
if attachment.file != nil
  attachment.post
end

# good code and the same as above
if attachement.file
  attachment.post
end

# ---- #

if password.length < 8
  fail "Password too short"
end
unless username
  fail "No user name set"
end

# good code
# does the same thing as the code above, but cleaner and more concise
fail "Password too short" if password.length < 8
fail "No user name set" unless username

# ---- #

def sign_in
  # this is saying only pass 'sign_user_in' if the previous var
  # evaluated as nil
  current_session || sign_user_in
end

# ---- #
# conditional assignment
# if a variable hasn't been set to anything, set it to ___

i_was_set ||= 2
puts i_was_set # will output 2

# with options
options[:country] = 'us' if options[:country].nil?
# is the same as..
options[:country] ||= 'us'

#with return values
if list_name # if list name is not nil set path to username and list name
  options[:path] = "/#{user_name}/#{list_name}"
else # if its nil set it to user name
  options[:path] = "/#{user_name}"
end

#same thing as above but we don't have the repetitive code
options[:path] = if list_name
  "/#{user_name}/#{list_name}"
else
  "/#{user_name}"
end


# ---- #
# every method in ruby returns a value
# refactor code - make it more readable

# original code
# create a method named list_url
# takes parameters user_name and list_name
def list_url(user_name, list_name)
  # if list name is not nil set url to username list name
  if list_name
    url = "/#{user_name}/#{list_name}"
  # if list name is nil set url to username
  else
    url = "/#{user_name}"
  end
  #run url
  url
end


#refactored
def list_url(user_name, list_name)
  if list_name
   "/#{user_name}/#{list_name}"
  else
   "/#{user_name}"
  end
end

# ---- #
# case statement

tweet_type = case tweet.status
  when /\A@\w+/
    :mention
  when /\Ad\s+\w+/
    :direct_message
  else
    :public
 end

 # same as above
 tweet_type = case tweet.status
    when /\A@\w+/      then :mention
    when /\Ad\s+\w+/   then :direct_message
    else               :public 
  end
