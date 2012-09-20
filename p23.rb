# Problem #23 for Project Euler
# Author: Tyler Ewing
# Date: 7/15/2012

=begin
def factor(n)
	a = Array.new
	a.push(1)
	(2..Math.sqrt(n)).each do |i|
		if n % i == 0
			a.push(i)
			a.push(n/i)
		end
	end
	return a.sort
end


=begin
class Enumerator
	def lazy_select(&block)
		Enumerator.new do |y|
			self.each do |i|
				y << i if block.call(i)
			end
		end
	end
end



abundant = Enumerator.new do |y|
	n = 12
	loop do
		if factor(n).reduce(:+) > n
			y << n
			n += 1
		else
			n += 1
		end
	end
end


#abundant.lazy_select { |i| i < 100 }

# sum = 0
# abundant.take(3).combination(2).to_a.each { |a| sum += a.reduce(:+) }

a = []
b = []
abundant.rewind
sum = 0

while abundant.peek < 14065
	a.push(abundant.next)
end

#a.combination(2).each { |a| sum += a.reduce(:+) }
#puts 28122*28123/2 - sum
#puts sum
a.combination(2).each do |a|
	b.push(a.reduce(:+))
end
puts b.uniq.reduce(:+)
=end

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

	def abundant?
		return self.factors.reduce(:+) > self
	end
end

ar = Array.new
#(12..28123).each{ |i| if i.abundant? then ar.push(i) end } # wayyyyy too slow


# We know all odd numbers up to 945 cannot be the sum of abundant numbers
# How?