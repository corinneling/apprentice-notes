# yield

def call_this_block
  yield
end

calls_this_block { puts "twitter" }

# another way to do this
def call_this_block
  yield "tweet"
end

call_this_block { |myarg| puts myarg }
