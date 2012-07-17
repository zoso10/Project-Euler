# What I had before was piss
# This is also piss

require 'Prime'


$nums = 0

def isPrime(n)
	sq = Math.sqrt(n)
	(2..sq).each do |i|
		if n % i == 0
			return false
		end
	end

	return n > 1
end


Prime.each(1000) do |p1|
	allPrime = true

	p1.to_s.split(//).permutation.to_a.each do |p2|
		if !isPrime(p2.join.to_i)
			allPrime = false
		end
	end
	if(allPrime)
		$nums += 1
	end
end

puts $nums