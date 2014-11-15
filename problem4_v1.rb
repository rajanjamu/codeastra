=begin
	* A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
	* Find the largest palindrome made from the product of two 3-digit numbers.
=end

puts "----------------------------"
digits = 3
ans = 1

for x in 1...10**digits
	for y in 1...10**digits
		value = x*y
		if (value.to_s == value.to_s.reverse)
			if (ans < value)
				ans = value
			end
		end
	end
end
puts "Largest palindrome from two #{digits}-digit numbers is #{ans}"
puts "----------------------------"