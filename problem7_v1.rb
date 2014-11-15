#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10 001st prime number?

require_relative "prime_number"

puts "----------------------------"
print "What is nth prime number. Enter n: "
input = gets.chomp.to_i

def prime_number(number)
	nth = 2
	while number > 1
		nth += 1
		count = 0
		(2...nth).each do |i|
			if !(nth%i == 0)
				count += 1
			end
		end
		if (count == (nth-2))
			number -= 1
		end
	end
	return nth
end

ans = prime_number(input)
puts "Answer is #{ans}"
puts "----------------------------"