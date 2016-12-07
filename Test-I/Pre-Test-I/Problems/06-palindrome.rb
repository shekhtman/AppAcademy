# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.

def palindrome?(string)

	reversed_string = []
	i = 0
	while i < string.length
		reversed_string.unshift(string[i])
		i += 1
	end

	if(reversed_string.join == string)
		return true
	else
		return false
	end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
puts('palindrome?("risetovotesir") == true: ' + (palindrome?('risetovotesir') == true).to_s)
puts('palindrome?("degasarewenotdrawnonwardwefreerfewdrawnonwardtonewerasaged") == true: ' + (palindrome?('degasarewenotdrawnonwardwefreerfewdrawnonwardtonewerasaged') == true).to_s)
