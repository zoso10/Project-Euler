# Parses Project Euler and updates the README

require 'hpricot'
require 'open-uri'

=begin
doc = Hpricot(open("http://projecteuler.net/progress"))
pars = Array.new
doc.search("div[@id=content]/h3").each do |p|
	pars << p.inner_text
end

pars.each do |p|
	puts p.to_s
end

doc = Hpricot(open("http://projecteuler.net/problems"))
pars = Array.new
doc.search("div[@id=content]")
=end


exec 'ls | grep p..\.rb > temp.txt'
file = File.open("temp.txt", "r")
file.readline
file.close
