=begin
	* 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
	* What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

puts "----------------------------"
print "What is the smallest positive number that is evenly divisible by all the numbers from 1 to x?\nEnter x: "
input = gets.chomp.to_i
Input = input

def factors(number)
	array = []
	num = 2
	while num <= number
		if (number%num == 0)
			number /= num
			array<<num
		else
			num += 1
		end
	end
	return array
end

def uniq_factors(number)
	factors_array = factors(number)
	uniq_factors_array = []
	factors_array.each do |factor|
		if !(uniq_factors_array.include?factor)
			uniq_factors_array<<factor
		end
	end
	return uniq_factors_array
end

def prime(number)
	array = []
	(2...number).each do |i|
		count = 0
		(2...i).each do |j|
			if !(i%j == 0)
				count += 1
			end
		end
		if (count == (i-2))
			array << i
		end
	end
	return array
end

def mul_array(array)
	ans = 1
	array.each do |i|
		ans *= i
	end
	return ans
end


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

ans = mul_array(prime(input))*mul_array(powers(input))
puts "Answer is #{ans}"
puts "----------------------------"