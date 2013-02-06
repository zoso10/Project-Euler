# Problem #32 for Project Euler
# Author: Tyler Ewing
# Date: 2/6/2013


products = []
usable = [1,2,3,4,5,6,7,8,9]
(1..4).each do |i|
	p usable.permutation(i).to_a
end



products.uniq.reduce(:+)
