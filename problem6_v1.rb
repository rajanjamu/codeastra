# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


puts "----------------------------"
print "What is the difference between the sum of the squares of the first n natural numbers and the square of the sum.\nEnter n: "
input = gets.chomp.to_i
Input = input

def sum_of_squares(number)
	ans = 0
	(1..number).each do |x|
		ans += x**2
	end
	return ans
end

def square_of_sum(number)
	ans = 0
	(1..number).each do |x|
		ans += x
	end
	return ans**2
end

ans = (sum_of_squares(Input) - square_of_sum(Input)).abs
puts "Answer is #{ans}"
puts "----------------------------"