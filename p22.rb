# Problem 22 for Project Euler
# Author: Tyler Ewing
# Date: 6/28/2012
# This was done during a meeting


#a = File.open('names.txt').each_line {|line| line.gsub(/[""]/,'').split(',')}.each{|x| puts x}

=begin
contents = ""
file = File.open("names.txt", "rb")
contents = file.read
a = contents.gsub(/["]/,'').split(',').sort.each{ |x| puts x }
=end

# Holy crap what was I thinking? Split this up
#File.open("names.txt", "rb").read.gsub(/["]/,'').split(',').sort.each{ |x| x.to_s.split(//).each{ |c| print c.ord-64, ' ' } }


$totalSum = 0

def getScore(name, index)
	nameSum = 0
	name.to_s.split(//).each{ |x| nameSum += (x.ord-64).to_i }
	$totalSum += nameSum*(index+1)
end


t1 = Time.now
a = File.open("names.txt", "rb").read.gsub(/["]/,'').split(',').sort!
a.each_index{ |i| getScore(a.at(i), i) }
t2 = Time.now

puts $totalSum
print (t2-t1)*1000.0, "ms\n"

