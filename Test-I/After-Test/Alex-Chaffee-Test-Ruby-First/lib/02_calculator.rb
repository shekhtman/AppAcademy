def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(nums)
	sum = 0
	nums.each do |num|
		sum += num
	end
	sum
end

=begin
def mult(*args)
	num_args = args.length
	prod = 1
	i = 0
	while i < num_args
		prod *= args[i]
		i += 1
	end
	prod
=end

def mult(*args)
	prod = 1
	args.each do |arg|
		prod *= arg
	end
	prod
end

def power(a, b)
	a ** b
end

def fact(num)
	fact = 1
	if num == 0 then 1
	elsif num < 0 then puts "negative nums not allowed"
	end
	while num > 0
		fact *= num
		num -= 1
	end
	fact 
end