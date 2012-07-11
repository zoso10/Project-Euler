# Problem #56 for Project Euler
# Author: Tyler Ewing
# Date: 7/10/2012

$sum = 0

t1 = Time.now
(2..99).each do |a|
	(2..99).each do |b|
		x = (a**b).to_s.split(//).inject(0) { |sum, n| sum + n.to_i}
		if x > $sum then $sum = x end
	end
end
t2 = Time.now

puts $sum
print (t2-t1) * 1000.0, " ms\n"