# Problem 18 for Project Euler
# Author: Tyler Ewing
# Date: 6/26/2012


a = "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23".split(/\n/).to_a



maxAr = Array.new(13)
maxIn = Array.new(13)

# initialize some things
sum = 75
maxAr[0] = 75
maxIn[0] = 0


=begin
for i in 1..(a.length-1)
	aCurr = a[i].split
	nextMax = aCurr.max.to_i
	nextIn = aCurr.index(a[i].split.max)

	if (nextIn == maxIn[i-1] or nextIn+1 == maxIn[i-1])
		maxAr[i] = aCurr.max.to_i
		maxIn[i] = aCurr.index(aCurr.max)
	else
		avail1 = maxIn[i-1]
		avail2 = maxIn[i-1]+1
		if(aCurr[avail1] > aCurr[avail2])
			maxAr[i] = aCurr[avail1].to_i
			maxIn[i] = 

	sum += maxAr[i].to_i
	puts sum
end
=end

# I like this a little better
(1..a.length-1).each{

	
}






=begin
75-0
95-0
82-2
87-2
82-2
75-3
88-0
99-0
83-4
94-8
97-8
78-7
91-0
89-4
98-2
=end