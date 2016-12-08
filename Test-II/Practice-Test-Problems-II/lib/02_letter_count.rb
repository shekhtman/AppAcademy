def letter_count(string)
	letters = string.split('')
	frequencies = Hash.new(0)

	letters.each do |letter|
    	if letter != ' '
    		frequencies[letter] += 1
    	end
	end
	frequencies
end
