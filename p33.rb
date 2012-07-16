# Problem #33 for Project Euler
# Author: Tyler Ewing
# Date; 7/16/2012

numProd = 1
denomProd = 1

t1 = Time.now
(10..99).each do |denom|
	(10..denom-1).each do |num|
		if denom % 10 != 0
			if num*1.0/denom == (num/10)*1.0/(denom%10) and (num%10) == (denom/10)
				numProd *= num
				denomProd *= denom
			end
		end
	end
end
t2 = Time.now

puts denomProd / numProd * 1.0
print (t2-t1)*1000.0, " ms\n"
