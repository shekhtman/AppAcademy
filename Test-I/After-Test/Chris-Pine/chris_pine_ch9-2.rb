#Q and A
def ask question 
	while true
		puts question
		reply = gets.chomp.downcase
		
		if (reply == 'yes' || reply == 'no') 
			if reply == 'yes'
				return true
			else
				return false
			end
			break 
		else
			puts 'Please answer "yes" or "no".' 
		end
	end
	answer # This is what we return (true or false).
end

	puts 'Hello, and thank you for...' 
	puts 
	ask 'Do you like eating tacos?' # Ignore this return value ask 'Do you like eating burritos?' # And this one
	wets_bed = ask 'Do you wet the bed?' # Save this return value ask 'Do you like eating chimichangas?'
	ask 'Do you like eating sopapillas?' 
	puts 'Just a few more questions...' 
	ask 'Do you like drinking horchata?' 
	ask 'Do you like eating flautas?'
	puts
	puts 'DEBRIEFING:'
	puts 'Thank you for...' 
	puts
	puts wets_bed


#Old Roman Numberals
roman = [
	['M', 1000],
 	['D', 500],
	['C', 100],
	['L', 50],
	['X', 10],
	['V', 5],
	['I', 1]
]

puts "Enter a number between 1 and 3000: "
years = gets.chomp.to_i
roman_string = ''

roman.each do |roman|
	char, value = roman
  	total = years / value
  	years = years % value
  	roman_string = roman_string + (char * total)
  	roman.push(total)
end

puts "Here is the Old Style Roman Numeral: "
#roman = ("M" * M_years) + ("D" * D_years) + ("C" * C_years) + ("L" * L_years) + ("X" * X_years) + ("V" * V_years) + ("I" * I_years)
puts roman.inspect
puts roman_string

#New Roman Numerals -- STILL WORKING ON IT ---
roman_string = ''
new_roman = []
i = 0
while i < roman.length
	if(roman[i][2] == 4) && (roman[i - 1][2] == 1)
		new_roman[i-1] = roman[i]
		new_roman[i+1] = roman[i - 1]
	else
		new_roman[i] = roman[i]
	end
	i += 1
end
puts new_roman.inspect 

