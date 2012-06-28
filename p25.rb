# Problem 25 for Project Euler
# Author: Tyler Ewing
# Date: 6/25/2012
# This was done during a meeting

# This is the pattern differences in indices
a = [5, 5, 5, 4]


# don't ask
=begin
index = 1+1

for dig in 1..1000
	index += a[(dig-1)%4]
	print index, "-", dig, " "
end

puts index
=end

# That was a mess
# Use Binet's Formula
