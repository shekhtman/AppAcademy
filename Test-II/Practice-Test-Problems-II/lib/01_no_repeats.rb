def no_repeats(year_start, year_end)
	no_repeats = []

	(year_start..year_end).each do |year|
    	
    	digits_no_repeats = []
  		digits_repeated_digit_found = false

  		year.to_s.each_char do |char|
  			puts digits_no_repeats.inspect
    		if digits_no_repeats.include?(char)
    			digits_repeated_digit_found = true
    			break
    		end
    		digits_no_repeats.push(char)
  		end
  		
  		if digits_repeated_digit_found == false 
  			no_repeats.push(year)
  		end 
    end
    puts no_repeats.inspect
  
  no_repeats
end