#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.

require_relative "is_prime_v5"

input = 2000000		# Input value - Problem statement
sum = 5				# Following loop will not consider 2 and 3. Hence intiating summation with 5
(1..input).each do |i|
	if (i%6 == 1 || i%6 == 5)
		sum += i if is_prime(i)
	end
end

puts sum