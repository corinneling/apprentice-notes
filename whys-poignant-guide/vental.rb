require 'open-uri'
open( "http://ruby-doc.org/core-2.2.0/sample/drb/README_rdoc.html" ) do |lost|
  puts lost.read
end
