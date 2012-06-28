# Problem 16 for Project Euler
# Author: Tyler Ewing
# Date: 6/28/2012
# This was done during a meeting at work

puts (2**1000).to_s.split(//).inject(0){ |sum, i| sum + i.to_i }
