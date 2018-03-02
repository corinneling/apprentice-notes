require 'nokogiri'
require 'open-uri'
require 'json'
require 'yaml/store'
require 'pry'

page_url = 'https://seesparkbox.com/'
doc = Nokogiri::HTML(open(page_url))

doc.to_html # returns the web page html
doc.to_xml # also returns the web page html
# i think html and xml are synonymous when it comes to scrapping data

h1  = doc.at_css('h1') # assigns the h1 to the var h1
h1.content = "Hello there." # sets the title content to the string
h1['class'] = 'greeting' # adds class to the h1
h1.add_next_sibling "\n\t<h2>General Kenobi</h2>" # adds an h2 after the h1
h2 = doc.css("h2").first # assigns h2 to the first h2 of the doc
h2 = doc.xpath("//h2").first # => another way to get the h2
h2['class'] = 'jedi-scum' # adds class to h2

list = Array.new # => creates a new array

link_items = doc.css('a.footer-social__social-link').text

store = YAML::Store.new "links.store"

store.transaction do
  store["title"] = { "links" => "sparkbox" }
  store["list"] = link_items
  puts "stored data"
end

 # puts h1 # outputs the changed h1
 # puts h2 # outputs the added h2
 # puts items # outputs the list with the icons
 # puts doc
 # binding.pry # starts pry
