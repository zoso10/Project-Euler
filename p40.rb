# Problem #40 for Project Euler
# Author: Tyler Ewing
# Date: 7/6/2012

# With a little bit of calculation by hand we can see that we don't need to go past 200,000

t1 = Time.now
a = Array.new
(1..200000).each { |i| i.to_s.split(//).each { |j| a.push(j.to_i) } }
t2 = Time.now

puts a[0]*a[9]*a[99]*a[999]*a[9999]*a[99999]*a[999999]
print (t2-t1) * 1000, " ms\n"


