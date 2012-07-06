# Problem #49 for Project Euler
# Author: Tyler Ewing
# Date: July 6, 2012

def isPrime(n)
	sq = Math.sqrt(n)
	(2..sq).each do |i|
		if n % i == 0
			return false
		end
	end
	return true
end


#(1000..9999).each { |i| puts i if isPrime(i) }
(0..9).to_a.permutation(4).to_a.each { |i| p i  if isPrime(i.to_s.to_i) }





