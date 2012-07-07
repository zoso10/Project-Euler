# Problem #26 for Project Euler
# Author: Tyler Ewing
# Date: 7/7/2012

h = Hash["length" => 0, "d" => 1]

(2..999).each do |i|
	c = Array.new
	b = (1.0/i).to_s.split('.')[1].split(//)

	while b[0] == "0"
		b.delete_at(0)
	end

	p b

	b.each { |j| if !c.include?(j) then c.push(j) end }


	if c.length > h["length"]
		h["length"] = c.length
		h["d"] = i
	end
end

puts h["d"]
puts h["length"]



