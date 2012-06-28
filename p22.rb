

a = File.open('names.txt').each_line {|line| line.gsub(/[""]/,'').split(',')}
#a = f.readlines
a.each{|x| puts x}




