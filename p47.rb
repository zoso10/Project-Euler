# Problem #47 for Project Euler
# Author: Tyler Ewing
# Data: 7/6/2012

def isPrime(n)
	end
	(2..Math.sqrt(n)).each do |i|
		if n % i == 0
			return false
		end
	end
	return n > 1
end


def factor(n)
	@a = Array.new
	(2..Math.sqrt(n)).each do |i|
		if n % i == 0
			@a.push(i)
			@a.push(n/i)
		end
	end
	return @a.uniq
end






