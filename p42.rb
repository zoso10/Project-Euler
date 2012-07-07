# Problem #42 for Project Euler
# Author: Tyler Ewing
# Date: 7/6/2012

def getValue(w)
	w.split(//).inject(0) { |sum, c| sum += (c.ord-64) }
end

t1 = Time.now
$words = 0

a = Array.new
(1..28).each { |i| a[i-1] = (0.5*i*(i+1)) }

f = File.open("words42.txt", "rb").read.gsub(/["]/,'').split(',')
f.each { |c| if a.include?(getValue(c)) then $words += 1 end }
t2 = Time.now


puts $words
print (t2-t1) * 1000.0, " ms\n"

