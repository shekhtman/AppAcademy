# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
#but my is_prime is better
def is_prime?(number)
  if number <= 1 || number == 4 #4 is a special case because the Math.sqrt(4) will fail from start of while loop
    # only numbers > 1 can be prime.
    return false
  end

  index = 2 #this should have been 3 to make the is_prime? optional, but the program fails
  sqrt = Math.sqrt(number)
  while (index <= sqrt)
    
    if (number % index) == 0
      return false
    end

    index += 1 #this should have been 2 to make the is_prime? optional, but the program fails
  end

  return true
end

def nth_prime(n)
  i = 0

  prime_num = 2
  while true
    if is_prime?(prime_num)
      i += 1
      if i == n
        #puts prime_num
        return prime_num
      end
    end

    prime_num += 1
  end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
