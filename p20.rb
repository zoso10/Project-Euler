# Problem 20 for Project Euler
# Author: Tyler Ewing
# Date: 6/25/2012
# This was done during a meeting at work


# I'm lazy and did it the recursive way
# Ruby is so fast that it really doesn't matter
def fact(i=1)
	if i == 1
		return 1
	else
		return i * fact(i-1)
	end
end

sum = 0
fact(100).to_s.each_byte{|b| sum += b.chr.to_i}
puts sum