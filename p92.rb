# Problem #92 for Project Euler
# Author: Tyler Ewing
# Date: 7/6/2012

$nums = 0

(1..1000000).each do |i|

	a = i
	loop do
		a = a.to_s.split(//).inject(0) { |sum , n| sum + (n.to_i)**2 }
		if a == 89
			$nums += 1
			break
		elsif a == 1
			break
		end
	end
end

puts $nums

