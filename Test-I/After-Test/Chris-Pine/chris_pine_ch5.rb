#Enter your name
puts "Please enter your first name: "
first_name = gets.chomp

puts "Please enter your middle name: "
middle_name = gets.chomp

puts "Please enter your last name: "
last_nmae = gets.chomp

puts "Hello " + first_name + " " + middle_name + " " + last_nmae + ", how are you doing?" 

#Favorite Number
puts "What is your favorite number?"
fav_num_string = gets.chomp
fav_num_integer = fav_num_string.to_i + 1

puts "A new favorite number is " + fav_num_integer.to_s + "."

