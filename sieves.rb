# Library of Sieves

module Sieve
	def Sieve.eratosthenes(n)
		ar = Array.new(n)
		ar.fill(true)
		primes = []

		sq = Math.sqrt(n)
		(2..sq).each do |i|
			if ar[i]
				(0..(n / i - i)).each do |p|
					ar[i * (i + p)] = false
				end
			end
		end
		ar[0] = false
		ar[1] = false
		ar.each_index{ |i| primes << i if ar[i] }
		primes
	end

	def Sieve.sundaram(n)
		num = (n-1)/2
		ar = Array.new(num)
		ar.fill(true)

		primes = []
		upper = (num-1)/3

		(1..upper).each do |j|
			(1..j).each do |i|
				index = i + j + 2 * i * j
				if ar[index]
					break if index > num
				end
			end
		end

		ar[0] = false
		ar.each_index{ |i| primes << 2*i+1 if ar[i] }
		primes
	end
end