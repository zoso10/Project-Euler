# Problem #35 for Project Euler
# Author: Tyler Ewing
# Date: 7/16/2012

$NUMS = 0

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


def isCircular(n)
	n.to_s.split(//).permutation.to_a.each do |p|
		if !$ar[p.join.to_i]
			return false
		end
	end
	return true
end


primes = Array.new
$ar.each_index { |i| if $ar[i] then primes.push (i) end }
primes.each { |p| if isCircular(p) then $NUMS += 1 end }


puts $NUMS