def caesar(string, offset)

	string.split("").map { |chr| 
		(chr.ord + offset < 123) ? 
		(chr.ord + offset).chr : 
		(chr.ord + offset - 26 ).chr 
	}.join("")

end

p caesar("alex", 3)