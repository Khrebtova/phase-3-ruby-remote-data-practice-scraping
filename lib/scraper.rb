require 'nokogiri'
require 'open-uri'

html = URI.open("https://rubygems.org/")
doc = Nokogiri::HTML(html)
links = doc.css("a")

doc.css(".home__image-wrap").text
 puts links[0].text