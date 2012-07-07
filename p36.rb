# Problem #36 for Project Euler
# Author: Tyler Ewing
# Date: 7/6/2012

$sum = 0

t1 = Time.now
(1..999999).step(2).each do |n|
	a = n.to_s
	if a == a.reverse
		b = n.to_s(2)
		if b == b.reverse
			$sum += n
		end
	end
end
t2 = Time.now

puts $sum
print (t2-t1) * 1000.0, " ms\n"


