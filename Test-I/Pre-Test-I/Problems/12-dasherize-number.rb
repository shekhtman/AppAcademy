# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
	str_num = num.to_s
	new_str = ""
	i = 0
	while i < str_num.length
		if (str_num[i].to_i % 2 == 1) || (str_num[i - 1].to_i % 2 == 1)
			new_str += '-'
		end
		new_str += str_num[i]
		i += 1
	end

	if(new_str[0] =='-')
		new_str[0] = ''
	end
	
	#if(new_str[(new_str.length - 1)] == '-')
	#	new_str[(new_str.length - 1)] = ''
	#end
	
	puts new_str
	new_str
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
