# Problem #52 for Project Euler
# Author: Tyler Ewing
# Date: 7/10/2012

class Enumerator
	def lazy_select(&block)
		Enumerator.new do |y|
			self.each do |i|
				y << i if block.call(i)
			end
		end
	end
end

def isPeculiar(x)
	x1 = x.to_s.split(//).sort!
	x2 = (2*x).to_s.split(//).sort!
	if x1 == x2
		x3 = (3*x).to_s.split(//).sort!
		if x3 == x2
			x4 = (4*x).to_s.split(//).sort!
			if x3 == x4
				x5 = (5*x).to_s.split(//).sort!
				if x4 == x5
					x6 = (6*x).to_s.split(//).sort!
					if x5 == x6
						return true
					end
				end
			end
		end
	end
	return false
end

nums = Enumerator.new do |y|
	n = 1
	loop do
		y << n
		n += 1
	end
end

t1 = Time.now
puts nums.lazy_select { |x| isPeculiar(x) }.first
t2 = Time.now
print (t2-t1) * 1000.0, " ms\n"