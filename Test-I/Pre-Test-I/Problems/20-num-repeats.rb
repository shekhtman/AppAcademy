# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)

	letters = string.split('')
	frequencies = Hash.new(0)

	letters.each do |letter|
    	frequencies[letter] += 1
	end

	#puts frequencies

	target_count = 0
	frequencies.values.select do |value|
		if value > 1
			target_count += 1
		end
	end
	
	puts target_count
	return target_count
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
