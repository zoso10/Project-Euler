# Problem #41 for Project Euler
# Author: Tyler Ewing
# Date: 9/4/2012

def isPrime(n)
	(2..Math.sqrt(n)).each do |x|
		if n % x == 0
			return false
		end
	end
	return n > 1
end

987654321.to_s.split(//).permutation.to_a.each do |x|
	if isPrime(x.to_s.to_i)
		return x.to_s.to_i
	end
end