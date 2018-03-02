require 'net/http'
Net::HTTP.start( 'www.ruby-lang.org', 80 ) do |web|
  print( web.get( '/en/about/license.txt' ).body )
end
