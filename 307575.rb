n, m = STDIN.gets.split(" ").map(&:to_i)
relations = m.times.map {
	STDIN.gets.split(" ").map(&:to_i)
}
 
groups = []
(1...2**n).each { |gix|
	group = (1..n).zip(sprintf("%0*b", n, gix).split(""))
		.select { | i, f | f == "1" }
		.transpose[0]
	if group.combination(2).all? { |r|
		relations.include?(r)
	}
		groups << group
	end
}
 
#puts "--------"
#p groups
#puts "--------"
 
puts groups.max_by { |g| g.size }.size
