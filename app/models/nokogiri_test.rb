require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = 'http://www.goodreads.com/review/list/17277906?format=html&sort=title'
doc = Nokogiri::HTML(open(url))
doc.css(".value").each do |item|
  puts item.at_css("img")[:src]
end