# Problem #30 for Project Euler
# Author: Tyler Ewing
# Date: 7/6/2012

$totalSum = 0

t1 = Time.now
# We know 6*9^5 = 354294 is the largest possible
(2..354294).each do |i|
	powSum = i.to_s.split(//).inject(0) { |tot, n| tot += n.to_i**5 }
	if powSum == i then $totalSum += i end
end
t2 = Time.now

puts $totalSum
print (t2-t1) * 1000, " ms \n"


