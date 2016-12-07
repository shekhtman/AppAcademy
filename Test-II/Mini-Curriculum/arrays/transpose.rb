def transpose(array)
	
	rows = array
  	cols = []

  	row = 0

  	while row < rows.size
    	
    	cols[row] = []
    	col = 0
    	
    	while col < rows.size
      		cols[row] << rows[col][row]
      		puts cols.inspect #test to see how new matrix is buing built
      		col += 1
    	end
    	row += 1
  	end

  	cols
end

puts('transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]]) == [[0, 3, 6], [1, 4, 7], [2, 5, 8]]: ' + (transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]]) == [[0, 3, 6], [1, 4, 7], [2, 5, 8]]).to_s)
