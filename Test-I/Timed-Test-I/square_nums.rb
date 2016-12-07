def square_nums(max)
	i = 1
	square = 1
	squares = 0
	while square < max
		i += 1
		square = i * i
		squares += 1
	end
	return squares
end



puts('square_nums(5) == 2: ' + (square_nums(5) == 2).to_s)
puts('square_nums(10) == 3: ' + (square_nums(10) == 3).to_s)
puts('square_nums(25) == 4: ' + (square_nums(25) == 4).to_s)




