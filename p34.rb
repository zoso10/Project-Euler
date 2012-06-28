# Problem 34 for Project Euler
# Author: Tyler Ewing
# Date: 6/27/2012
# This was done during a meeting


def factorial(n)
	(1..n).inject { |prod, i| prod * i }
end


def isCurious(n)
	sum = 0
	n.to_s.split(//).each { |b| sum += (1..b.to_i).inject(1) { |prod, i| prod * i } }
	
	if (sum == n)
		return n
	else
		return 0
	end
end


totalSum = 0
for i in 3..7*factorial(9)
	totalSum += isCurious(i)
end

puts totalSum



