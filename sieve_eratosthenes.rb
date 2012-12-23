# Sieve of Eratosthenes
# O(n log(log(n))) time complexity
# O(n) bits of memory

$NUM = ARGV.first.to_i

# Start the timer
t1 = Time.now
ar = Array.new($NUM)
ar.fill(true)

sq = Math.sqrt($NUM)
(2..sq).each do |i|
	if ar[i]
		(0..($NUM/i - i)).each do |p|
			ar[i * (i+p)] = false
		end
	end
end
ar[0] = false
ar[1] = false
# End the timer
t2 = Time.now

ar.each_index { |i| if ar[i] then print i, " " end }
print "\n"
puts (t2-t1)*1000.0
