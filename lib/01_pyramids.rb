  # (1..10).each{|n| puts ("#" * n).rjust(i)}


  def half_pyramid
	puts "rentrer un nombre"
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
end


perform

