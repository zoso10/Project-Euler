# Problem #37 for Project Euler
# Author: Tyler Ewing
# Date: 9/20/2012


class Integer
	def prime?
		(2..Math.sqrt(self)).each do |i|
			if self % i == 0
				return false
			end
		end
		return self > 1
	end

	def truncatable?
		#quick beginning check
		if self.to_s[-1].to_i != 3 and self.to_s[-1].to_i != 7 and self.to_s[0].to_i != 3 and self.to_s[0].to_i != 7 
			return false
		end

		# right to left
		r = self
		r.to_s.length.times do |x|
			#puts r
			if !r.prime? then return false end
			r = r/10
		end

		# left to right
		l = self
		(l.to_s.length-1).times do |x|
			l = l.to_s[1..-1].to_i
			#puts l
			if !l.prime? then return false end
		end
		return true
	end
end


# Quick test
#p 3797.truncatable?

# We know there are only 11 total
nums = Enumerator.new do |y|
	n = 10
	loop do
		if n.truncatable?
			y << n
		end
		n += 1
	end
end

# This is slow... :/
t1 = Time.now
puts nums.take(11).reduce(:+)
t2 = Time.now
print (t2-t1) * 1000.0, " ms\n"
