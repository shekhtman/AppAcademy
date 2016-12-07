# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)

	hours = (minutes / 60)
	minutes = (minutes % 60) #dont convert to string because there are case where minutes are between 1 and 9 inclusive
	
	if minutes < 10
    	minutes = "0" + minutes.to_s
    else
    	minutes = minutes.to_s
    end

	return hours.to_s + ':' + minutes

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
puts('time_conversion(365) == "6:05": ' + (time_conversion(365) == '6:05').to_s)