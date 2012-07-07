# Problem 55 for Project Euler
# Author: Tyler Ewing
# Date: 7/7/2012

$lychrel = 0
LIMIT = 50

t1 = Time.now
(1..9999).each do |n|

	@a = n + n.to_s.reverse.to_i
	@iter = 1

	until @a == @a.to_s.reverse.to_i
		@a = @a + @a.to_s.reverse.to_i
		@iter += 1

		if @iter == LIMIT
			$lychrel += 1
			break
		end
	end
end
t2 = Time.now

puts $lychrel
print (t2-t1) * 1000.0, " ms\n"

