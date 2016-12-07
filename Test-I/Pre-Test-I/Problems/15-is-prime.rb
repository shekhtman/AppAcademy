# Write a method that takes in an integer (greater than one) and
# returns true if it is prime; otherwise return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
# More generally, if `m` and `n` are integers, `m % n == 0` if and only
# if `n` divides `m` evenly.
#
# You would not be expected to already know about modulo for the
# challenge.
#
# Difficulty: medium.

def is_prime?(number)
  if number <= 1 || number == 4 #4 is a special case because the Math.sqrt(4) will fail from start
    # only numbers > 1 can be prime.
    return false
  end

  index = 3
  sqrt = Math.sqrt(number)
  while (index <= sqrt)
    
    if (number % index) == 0
      return false
    end

    index += 2
  end

  return true
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('is_prime?(2) == true: ' + (is_prime?(2) == true).to_s)
puts('is_prime?(3) == true: ' + (is_prime?(3) == true).to_s)
puts('is_prime?(4) == false: ' + (is_prime?(4) == false).to_s)
puts('is_prime?(5) == true: ' + (is_prime?(5) == true).to_s)
puts('is_prime?(7) == true: ' + (is_prime?(7) == true).to_s)
puts('is_prime?(9) == false: ' + (is_prime?(9) == false).to_s)
puts('is_prime?(13) == true: ' + (is_prime?(13) == true).to_s)
puts('is_prime?(17) == true: ' + (is_prime?(17) == true).to_s)
puts('is_prime?(19) == true: ' + (is_prime?(19) == true).to_s)
puts('is_prime?(23) == true: ' + (is_prime?(23) == true).to_s)
puts('is_prime?(7919) == true: ' + (is_prime?(7919) == true).to_s)
puts('is_prime?(1500450271) == true: ' + (is_prime?(1500450271) == true).to_s)


