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

t1 = Time.now
(1..9999).each do |i|
	
	a = i
	da = sumFactors(factor(a))

	b = da
	db = sumFactors(factor(b))

	if db == a and a != b
		$totalSum += a
	end
end
t2 = Time.now

puts $totalSum
print (t2-t1) * 1000, " MS \n"
