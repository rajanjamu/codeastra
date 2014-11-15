# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require_relative "prime_numbers"

puts "----------------------------"
print "What is the smallest positive number that is evenly divisible by all the numbers from 1 to x?\nEnter x: "
input = gets.chomp.to_i
Input = input

def powers(number)
	pow = 2
	array = []
	begin
		root = number**(1.0/pow)
		(array<<prime(root)).flatten!
		pow += 1
	end while root >= 2
	return array
end

ans = prime(input).reduce(&:*)*powers(input).reduce(&:*)
puts "Answer is #{ans}"
puts "----------------------------"