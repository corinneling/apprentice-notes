require 'open-uri'
open( "http://ruby-doc.org/core-2.2.0/sample/drb/README_rdoc.html" ) do |truck|
  truck.each_line do |line|
    puts line if line['server']
  end
end
