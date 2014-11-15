#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10 001st prime number?

require_relative "prime_number"
require_relative "is_prime_v3"

puts "----------------------------"
print "What is nth prime number. Enter n: "
input = gets.chomp.to_i

sum = 5

def prime_number(number)
	while (6*x - 1 < 2000000)
		x += 1
		if (is_prime(6*x-1))
			n += 1
			sum += 6*x - 1
			if !(6*x - 1 < 2000000)
				break
			end
		end
		if (is_prime(6*x+1))
			n += 1
			sum += 6*x + 1
		end
	end
	return ans
end

# puts is_prime(input)
sum = 0
n = 1
begin
	number = prime_number(n)
	sum += number
	n += 1
	puts number
end while number < 2000000

puts sum

# ans = prime_number(input)
# puts "Answer is #{ans}"
puts "----------------------------"