# Problem #35 for Project Euler
# Author: Tyler Ewing
# Date: 9/20/2012

# Sieve
$ar = Array.new(1000000)
$ar.fill(true)

(2..Math.sqrt(1000000)).each do |i|
	if $ar[i]
		(0..(1000000/i - i)).each do |p|
			$ar[i * (i+p)] = false
		end
	end
end
$ar[0] = false
$ar[1] = false

# Check if a number is a circular prime
class Integer
	def circularPrime?
		n = self.to_s
		n.length.times do |i|
			n = Array.new(n.length){ |x| n[x-1] }
			if !$ar[n.join.to_i]
				return false
			end
		end
		return true
	end
end

# This is slower since I check every prime
# It would be better if I calculated the numbers it could be...
$NUMS = 0
t1 = Time.now
(2..999999).each do |i|
	if $ar[i]
		if i.circularPrime?
			$NUMS += 1
		end
	end
end
t2 = Time.now

puts $NUMS
print (t2-t1) * 1000.0, " ms\n"