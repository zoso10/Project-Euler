# Parses Project Euler and updates the README

require 'hpricot'
require 'open-uri'

doc = Hpricot(open("http://projecteuler.net/progress"))
pars = Array.new
doc.search("div[@id=content]/h3").each do |p|
	pars << p.inner_text
end

pars.each do |p|
	puts p.to_s
end
