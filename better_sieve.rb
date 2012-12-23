# Slightly faster

def better_sieve_upto(n)
  s = (0..n).to_a
  s[0] = s[1] = nil
  s.each do |p|
    next unless p
    break if p * p > n
    (p*p).step(n, p) { |m| s[m] = nil }
  end
  s.compact
end

t1 = Time.now
# Suppress the output
better_sieve_upto(1000000)
t2 = Time.now
puts (t2-t1)*1000.0