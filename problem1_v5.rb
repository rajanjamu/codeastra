n = 1000
sum = 0
num = 0

until num >= n
	if ((num%3 == 0) || (num%5 == 0))
		sum += num
	end
	num += 1
end

puts sum
