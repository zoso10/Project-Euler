# Problem #21 for Porject Euler
# Author: Tyler Ewing
# Date: 7/6/2012

def factor(n)
	@a = Array.new
	@a.push(1)
	(2..Math.sqrt(n)).each do |i|
		if n % i == 0
			@a.push(i)
			@a.push(n/i)
		end
	end
	return @a
end


def sumFactors(a)
	@sum = a.reduce(:+)
	return @sum
end

