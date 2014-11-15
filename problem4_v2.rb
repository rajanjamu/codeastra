=begin
	* A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
	* Find the largest palindrome made from the product of two 3-digit numbers.
=end

puts "----------------------------"
ans = 1

(1...999).each do |i|
	(i...999).each do |j|
		value = i*j
		if (value.to_s == value.to_s.reverse)
			ans = value if ans < value
		end
	end
end

puts ans
puts "----------------------------"