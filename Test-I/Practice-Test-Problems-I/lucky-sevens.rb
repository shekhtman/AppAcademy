def lucky_sevens?(numbers)
	i = 0
	while i < numbers.length - 2
		if(numbers[i] + numbers[i+1] + numbers[i+2] == 7)
			return true
		end
		i += 1
	end
	return false
end

puts('lucky_sevens?([2,1,5,1,0]) == true: ' + (lucky_sevens?([2,1,5,1,0]) == true).to_s)
puts('lucky_sevens?([0,-2,1,8]) == true: ' + (lucky_sevens?([0,-2,1,8]) == true).to_s)
puts('lucky_sevens?([7,7,7,7]) == false: ' + (lucky_sevens?([7,7,7,7]) == false).to_s)	
puts('lucky_sevens?([3,4,3,4]) == false: ' + (lucky_sevens?([3,4,3,4]) == false).to_s)	
