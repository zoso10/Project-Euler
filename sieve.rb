# Sieve

$NUM = ARGV.first.to_i

ar = Array.new($NUM)
ar.fill(true)

(2..Math.sqrt($NUM)).each do |i|
	if ar[i]
		(0..($NUM/i - i)).each do |p|
			ar[i * (i+p)] = false
		end
	end
end
ar[0] = false
ar[1] = false

ar.each_index { |i| if ar[i] then print i, " " end }
print "\n"