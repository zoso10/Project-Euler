# Problem #17 for Project Euler
# Author: Tyler Ewing
# Date: 9/19/2012

require 'linguistics'

Linguistics::use( :en )
puts (1..1000).map{ |i| i.en.numwords.gsub(/[ -]/,'').length }.reduce(:+)