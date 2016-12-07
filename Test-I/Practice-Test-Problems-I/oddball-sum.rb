def oddball_sum(numbers)
	i = 0
	sum = 0
	while i < numbers.length
		sum += numbers[i]
		i += 2
	end
	return sum
end

oddball_sum([1,2,3,4,5]) == 9

puts('oddball_sum([1,2,3,4,5]) == 9: ' + (oddball_sum([1,2,3,4,5]) == 9).to_s)
puts('oddball_sum([0,6,4,4]) == 4: ' + (oddball_sum([0,6,4,4]) == 4).to_s)
puts('oddball_sum([1,2,1]) == 2: ' + (oddball_sum([1,2,1]) == 2).to_s)
