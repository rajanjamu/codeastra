# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

puts "----------------------------"
print "There exists exactly one Pythagorean triplet for which a + b + c = sum.\nEnter sum:  "
input = gets.chomp.to_i

break_flag = false
(1..input).each do |a|
	(1..input).each do |b|
		if (a+b <= (input-1))
			c = input - a - b
			if (a**2 + b**2 == c**2)
				puts "Answer is #{a*b*c}"
				break_flag = true
				break
			end
		end
	end
	break if break_flag == true
end
puts "----------------------------"