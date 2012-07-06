# Problem #92 for Project Euler
# Author: Tyler Ewing
# Date: 7/6/2012


# Numbers that arrive at 81
$nums = 0

(1..100).each do |i|
	@a = i

=begin
	while if @a != 89 or @a != 1) do
		sum = 0
		@a.to_s.split(//).each{ |j| sum += j.to_i**2 }
		@a = sum
		puts @a
	end
=end

# WHY?
	sum = 0
	while(@a.to_s.split(//).each{ |j| sum += j.to_i**2 }) do
		if @a == 89
			$nums += 1
			#puts i
			break
		elsif @a == 1
			puts i
			break
		else
			@a = sum
			sum = 0
		end
	end
end

puts $nums




