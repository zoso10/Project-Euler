# Problem 48 for Project Euler
# Author: Tyler Ewing
# Date: 6/27/2012
# This was done during a meeting

puts (1..1000).inject{ |sum, i| sum + i**i }.to_s.split(//).last(10)