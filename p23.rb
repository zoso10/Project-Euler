# Problem #23 for Project Euler
# Author: Tyler Ewing
# Date: 7/15/2012


class Integer
	def factors
		a = Array.new
		a.push(1)
		(2..Math.sqrt(self)).each do |i|
			if self % i == 0
				a.push(i)
				a.push(self/i)
			end
		end
		return a
	end

	# def sum_of_factors1
	# 	t1 = Time.now
	# 	total = 1
	# 	limit = Math.sqrt(self)
	# 	(2..limit).each do |n|
	# 		if self%n == 0
	# 			total += n + (self/n)
	# 			total -= n if n == (self/n)
	# 		end
	# 	end
	# 	t2 = Time.now
	# 	puts "#{(t2-t1)*1000.0}"
	# 	total
	# end

	# This is faster
	def sum_of_factors
		# t1 = Time.now
		total = 1
		low, high = 2, self/2
		while low <= high do
			if self%low == 0
				total += low + high
				total -= low if low == high
			end
			low +=1 
			high = self/low
		end
		# t2 = Time.now
		# puts "#{(t2-t1)*1000.0}"
		total
	end

	def abundant?
		self.sum_of_factors > self
	end
end

ar = Array.new
(12..28123).each{ |n| ar << n if n.abundant? }
# puts ar.size
# puts ar[-1]






