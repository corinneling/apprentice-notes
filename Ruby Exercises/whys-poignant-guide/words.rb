require_relative 'code_words'

print "Enter your new idea: "
idea = gets
CODE_WORDS.each do |real, code|
  idea.gsub( real, code )
end

print "File coded, please give your new idea a name: "
idea_name = gets.strip
File::open( "idea-" + idea_name + ".txt", "w" ) do |f|
  f << idea
end
