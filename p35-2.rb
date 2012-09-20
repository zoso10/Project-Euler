# Problem #35 for Project Euler
# Author: Tyler Ewing
# Date: 9/20/2012

$NUM = 1000000

ar = Array.new($NUM)
ar.fill(true)

(2..Math.sqrt($NUM)).each do |i|
	if ar[i]
		(0..($NUM/i - i)).each do |p|
			ar[i * (i+p)] = false
		end
	end
end
ar[0] = false
ar[1] = false

def circularPrime?(n)
end



#ar.each_index { |i| if ar[i] then print i, " " end }

ar2 = Array.new
ar.each_index do |i|
	if ar[i]
		if i.to_s.include?("")