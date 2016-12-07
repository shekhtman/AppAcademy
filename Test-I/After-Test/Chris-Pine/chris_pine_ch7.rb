#is this too not DRY?
#Bottles of Beer
bottles = 99

while bottles > 0
	if bottles > 1
		puts bottles.to_s + " Bottles of Beer on the Wall." + " " + bottles.to_s + " Bottles of Beer."	
	else
		puts bottles.to_s + " Bottle of Beer on the Wall." + " " + bottles.to_s + " Bottle of Beer."		
	end
	puts "You take one down and pass it around. " + (bottles - 1).to_s + " Bottles of Beer."
	bottles = bottles - 1
end

#Deaf Grandma
comment = ""
while true

	puts "Speak sometHing to grandmama!"
	comment = gets.chomp

	if comment == "BYE BYE BYE"
		break
	end

  	while comment != comment.upcase  
    	puts "HUH?! SPEAK UP, SONNY!"
    	comment = gets.chomp
  	end

    year = "19" + (rand(21) + 30).to_s
    puts "NO, NOT SINCE " + year + "!"

end

#Leap Years
puts "Enter a starting year for leap years: "
starting_year = gets.chomp
puts "Enter an ending year for leap years: "
ending_year = gets.chomp

puts "These are leap years between " + starting_year + " and " + ending_year + ":"
year = starting_year.to_i
ending_year = ending_year.to_i

while(year <= ending_year)
	if(year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0)
		puts year.to_s
	end
	year = year + 1
end





