# Problem #29 for Project Euler
# Author: Tyler Ewing
# Date: 7/16/2012

ar = Array.new

t1 = Time.now
(2..100).each do |a|
	(2..100).each do |b|
		ar.push(a**b)
	end
end
t2 = Time.now

puts ar.uniq.length
print (t2-t1) * 1000.0, " ms\n"
