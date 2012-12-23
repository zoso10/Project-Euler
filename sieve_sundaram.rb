# Sieve of Sundaram
# O(n log(n)) time complexity
# O(n) bits of memory

$NUM = (ARGV.first.to_i - 1) / 2

# Start timer
t1 = Time.now
ar = Array.new($NUM)
ar.fill(true)

upper = ($NUM-1)/3

(1..upper).each do |j|
	(1..j).each do |i|
		index = i + j + 2 * i * j
		if ar[index]
			break if index > $NUM
			ar[index] = false
		end
	end
end

ar[0] = false
# End the timer
t2 = Time.now

ar.each_index{ |i| print 2*i+1, " " if ar[i] }
print "\n"
puts (t2-t1)*1000.0