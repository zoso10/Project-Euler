# Problem #45 for Project Euler
# Author: Tyler Ewing
# Date: 7/6/2012

class Enumerator
	def lazy_select(&block)
		Enumerator.new do |y|
			self.each do |i|
				y.yield(i) if block.call(i)
			end
		end
	end
end

def isPent(p)
	return ((1 + Math.sqrt(1+24*p))/6) % 1 == 0
end

# A Hexagonal number is also a Triangle number
# So you only need to calculate the Hex numbers
hex = Enumerator.new do |y|
	n = 144
	loop do 
		y << n * (2*n-1)
		n += 1
	end
end

t1 = Time.now
puts hex.lazy_select { |x| isPent(x) }.first
t2 = Time.now
print (t2-t1) * 1000.0, " ms\n"




