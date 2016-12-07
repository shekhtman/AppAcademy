#Sort -- STILL WORKING ON IT --
def sort arr 
	rec_sort arr, []
end

def rec_sort unsorted_array, sorted_array

	if unsorted_array.length <= 0
		return sorted 
	end
	
	unsorted_array_copy = [] 
	unsorted_array_copy = unsorted_array
	
	i = 0
	popped_index = 0
	temp = unsorted_array_copy[i]

	while i < unsorted_array_copy.length - 1
		puts "temp is " + temp
		#temp = unsorted_array[i]#dont uncomment this
		if  (unsorted_array_copy[i + 1] <=> temp) == -1
			puts unsorted_array_copy[i + 1] + " comes before " + temp
			temp = unsorted_array_copy[i + 1]
			popped_index = i + 1
		else
			puts temp + " comes before " + unsorted_array_copy[i + 1]
		#temp = unsorted_array[i]#dont uncomment this
		end

		i += 1
	end
	puts temp + " at index " + popped_index.to_s + " will be removed from this array"
	
	sorted_array.push(temp)
	unsorted_array_copy.delete(popped_index) #why doesnt this really delete?

	puts unsorted_array_copy.inspect
	puts sorted_array
	#rec_sort unsorted_array_copy, sorted_array --- WHY DOES THIS FAIL AND CRASH
	

end

puts(sort(['feel','alex','singing','aardvark','can','axle','like','box','can']))

#THERE ARE MORE 'THINGS TO TRY' BUT I WANTED TO HAND ALL THESE IN WHILE YOU STILL REMEMBER ME -- WILL CONTINUE ON TRYING THEM OUT AND FINISHING BOTH BOOKS --