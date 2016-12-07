# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)

	letters = string.split('')
	frequencies = Hash.new(0)

	letters.each do |letter|
    	frequencies[letter] += 1
	end

	#puts frequencies

	#frequencies = frequencies.sort_by do |letter, count|
    #	count
	#end

	#frequencies.reverse!
	#return frequencies

	most_common_letter_value = frequencies.max_by do |key, value|
		value
	end
	
	#puts most_common_letter_value
	return most_common_letter_value
	
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
puts(
	'most_common_letter("alexander shekhtman") == ["a", 3]: ' + 
	(most_common_letter('alexander shekhtman') == ['a', 3]).to_s
)
