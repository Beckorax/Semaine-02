
def half_pyramid
	puts "Hello, tu veux une pyramide tordue de combien d'étages??"
	i = gets.chomp.to_i
	(1..i).each{|n| puts ("#" * n).rjust(i)}
end


def full_pyramid
	puts "Hello, tu veux une pyramide centrée de combien d'étages??"
	i = gets.chomp.to_i
	s = i
	puts (" ")*(s) + ("#")
	
	for n in (1..i)
		puts (" ")*(s-1) + ("#") *(2*n+1)
	    s = s-1
	 end
end


def perform
	half_pyramid
	full_pyramid
end


perform

