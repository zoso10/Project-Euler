# Problem #27 for Project Euler
# Author: Tyler Ewing
# Date: 7/6/2012


$primes = Array.new
$longest = 1
$longestA = -1
$longestB = -1


def isPrime(n)
	if n < 0
		return false
	end
	(2..Math.sqrt(n)).each do |i|
		if n % i == 0
			return false
		end
	end
	return true
end


def calcConsecPrimes(a, b)
	@numConsec = 0
	@n = 0
	while(isPrime(@n**2 + a*@n + b))
		@n += 1
		@numConsec += 1
	end

	if(@numConsec > $longest)
		$longestA, $longestB = a, b
		$longest = @numConsec
	end
end

t1 = Time.now
$primes.push(2)
(3..999).each{ |i| if isPrime(i) then $primes.push(i) end }


(-999..999).each do |i|
	$primes.each do |j|
		calcConsecPrimes(i,j)
	end
end
t2 = Time.now


print "a * b = ", $longestA * $longestB, "\n"
print "Largest n = ", $longest, "\n"
print "Calculated in ", (t2-t1) * 1000, " ms \n"




