# Problem #28 for Project Euler
# Author: Tyler Ewing
# Date: 9/21/2012

$SUM = 1
$CURNUM = 1

(2..1000).step(2) do |x|
	4.times do |i|
		$CURNUM += x
		$SUM += $CURNUM
	end
end

puts $SUM