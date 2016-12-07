def crazy_sum(numbers)
	current_index = 0
	i = 0
	sum = 0
	while current_index < numbers.length
		sum += numbers[current_index] * current_index
		current_index += 1
		#i += 1
	end
	return sum
end


puts('crazy_sum([2]) == 0: ' + (crazy_sum([2]) == 0).to_s)
puts('crazy_sum([2, 3]) == 3: ' + (crazy_sum([2, 3]) == 3).to_s)
puts('crazy_sum([2, 3, 5]) == 13: ' + (crazy_sum([2, 3, 5]) == 13).to_s)
puts('crazy_sum([2, 3, 5, 2]) == 19: ' + (crazy_sum([2, 3, 5, 2]) == 19).to_s)
