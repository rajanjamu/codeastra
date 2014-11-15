# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

require_relative "square_of_sum"
require_relative "sum_of_squares"

puts "----------------------------"
print "What is the difference between the sum of the squares of the first n natural numbers and the square of the sum.\nEnter n: "
input = gets.chomp.to_i
ans = (sum_of_squares(input) - square_of_sum(input)).abs
puts "Answer is #{ans}"
puts "----------------------------"