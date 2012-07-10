# Problem #53 for Project Euler
# Author: Tyler Ewing
# Date: 7/9/2012


$values = 0

def fact(n)
	(1..n).reduce(:*)
end

def nCr(n, r)
	fact(n) / ( fact(r) * fact(n-r) )
end

t1 = Time.now
(23..100).each do |n|
	(3..(n-3)).each do |r|
		if nCr(n, r) > 1000000 then $values += 1 end
	end
end
t2 = Time.now

puts $values
print (t2-t1) * 1000, " ms\n"



