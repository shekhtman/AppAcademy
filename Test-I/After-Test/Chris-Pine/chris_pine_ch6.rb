#Boss says you're fired
puts "What do you want?"
answer = gets.chomp
puts "WHADDAYA MEAN " + "\"" + answer.upcase + "\"?!? YOU'RE FIRED!!\n\n"

#Table of Contents
line_width = 60

puts("Table of Contents\n".center(line_width))
puts("Chapter 1: Getting Started".ljust(line_width/2) + "page 1".rjust(line_width/2) )
puts("Chapter 2: Numbers".ljust(line_width/2) + "page 9".rjust(line_width/2) )
puts("Chapter 3: Letters".ljust(line_width/2) + "page 13".rjust(line_width/2) )