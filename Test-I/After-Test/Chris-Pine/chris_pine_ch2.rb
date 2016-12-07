#Calendar manipulation and Ages
hours_in_year = 24 * 365
puts "there are " + hours_in_year.to_s + " hours in a year."

minutes_in_decade = 60 * hours_in_year * 10
puts "there are " + minutes_in_decade.to_s + " minutes in a decade"

my_age_in_decades = 4.2
my_age_in_seconds = my_age_in_decades * minutes_in_decade * 60

#My age in seconds
puts "my age in seconds is " + my_age_in_seconds.to_i.to_s

#Autor's Compete Age in years, days, hours, minutes, seconds
author_age_in_seconds = 1025000000

seconds_in_year = 60 * 60 * 24 * 365
seconds_in_day = 60 * 60 * 24
seconds_in_hour = 60 * 60
seconds_in_minute = 60 

author_age_in_years = author_age_in_seconds / seconds_in_year
author_age_in_days = (author_age_in_seconds % seconds_in_year) / seconds_in_day
author_age_in_hours = (author_age_in_seconds % seconds_in_day) / seconds_in_hour
author_age_in_minutes = (author_age_in_seconds % seconds_in_hour) / seconds_in_minute
author_age_in_seconds = (author_age_in_seconds % seconds_in_minute)

puts "author's age is " + author_age_in_years.to_s + " years and " + 
author_age_in_days.to_s + " days and " + 
author_age_in_hours.to_s + " hours and " +
author_age_in_minutes.to_s + " minutes and " +
author_age_in_seconds.to_s + " seconds."