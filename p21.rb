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



$totalSum = 0
(2..999).each do |i|

	@fac1 = Array.new
	@fac1 = factor(i)
	@facSum1 = sumFactors(@fac1)

	@fac2 = Array.new
	@fac2 = factor(@fac1)
	@facSum2 = sumFactors(@fac2)

	if @facSum1 == fac2 and @facSum2 == fac1 and fac1 != fac2
		@totalSum += fac1 + fac2
	end
end

puts totalSum

