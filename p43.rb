# Problem #43 for Project Euler
# Author: Tyler Ewing
# Date: 7/10/2012

$sum = 0
a = [0,1,2,3,4,5,6,7,8,9]

t1 = Time.now
a.permutation.each do |i|
	@isGood = false

	if i[1..3].join.to_i % 2 == 0
		if i[2..4].join.to_i % 3 == 0
			if i[3..5].join.to_i % 5 == 0
				if i[4..6].join.to_i % 7 == 0
					if i[5..7].join.to_i % 11 == 0
						if i[6..8].join.to_i % 13 == 0
							if i[7..9].join.to_i % 17 == 0
								@isGood = true
							end
						end
					end
				end
			end
		end
	end

	if @isGood then $sum += i.join.to_i end
end
t2 = Time.now

puts $sum
print (t2-t1) * 1000.0, " ms\n"



