#Favorite Things
puts 'What are your favorite things!'

words = []

while (word = gets.chomp) != ''
  words.push(word)
end

puts "Array before sorting: "
puts words

puts "Array after sorting: "
puts words.sort


#Table of Contents Extedee -- could have been done with hash, but we did not learn that here yet in this book
line_width = 70

chapters = ["Getting Started", "Number", "Letters"]
pages = [1, 9, 13]

puts("Table of Contents\n".center(line_width))

i = 0
while i < chapters.length
	puts( 
		(
			"Chapter " + 
			(i + 1).to_s + 
			": " + 
			chapters[i] 
		).ljust(line_width/2) + 

		(
			"page " + 
			pages[i].to_s.rjust(3) #right justify the page number on its own
		).rjust(line_width/2) #right justify the whole thing together
	)
	i = i + 1
end