def disemvowel(string)
	 
	i = 0
	
	letters = string.split('')
	while i < letters.length
		if(letters[i] == 'a' || letters[i] == 'e' || letters[i] == 'i' || letters[i] == 'o' || letters[i] == 'u')
			letters[i] = ''
		end
		i += 1
	end
	return letters.join
end

puts('disemvowel("foobar") == "fbr": ' + (disemvowel("foobar") == "fbr").to_s)
puts('disemvowel("ruby") == "rby": ' + (disemvowel("ruby") == "rby").to_s)
puts('disemvowel("aeiou") == "": ' + (disemvowel("aeiou") == "").to_s)
puts('disemvowel("alexander shekhtman") == "lxndr shkhtmn": ' + (disemvowel("alexander shekhtman") == "lxndr shkhtmn").to_s)
