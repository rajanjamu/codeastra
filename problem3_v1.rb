=begin
	* The prime factors of 13195 are 5, 7, 13 and 29.
	* What is the largest prime factor of the number 600851475143 ?
=end

N = 600851475143
n = 600851475143
num = 2

puts "----------------------------"
print "Prime factors of #{n} are 1"

while num <= n
	if (n%num == 0)
		n /= num
		ans = num
		print ", #{ans}"
	else
		num += 1	
	end
end

puts "\nLargest prime factor of #{N} is #{ans}"
puts "----------------------------"
