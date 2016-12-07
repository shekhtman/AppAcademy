# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
	
	first_num_index = 0
	second_num_index = 0
	
	while first_num_index < nums.length
		second_num_index = first_num_index + 1
		while second_num_index < nums.length
			
			if(nums[first_num_index] + nums[second_num_index] == 0)
				return [first_num_index, second_num_index]
			else
				second_num_index += 1
			end
		end
		first_num_index += 1
	end

	nil

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s)
puts('two_sum([0, 1, 3, 5, 0]) == [0, 4]: ' + (two_sum([0, 1, 3, 5, 0]) == [0, 4]).to_s)
puts('two_sum([0, 33, 4, 5, -5, 7]) == [3, 4]: ' + (two_sum([0, 33, 4, 5, -5, 7]) == [3, 4]).to_s)