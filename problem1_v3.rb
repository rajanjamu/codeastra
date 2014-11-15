n = 1000
sum = 0

for num in 1...n
	if !((num%3 == 0) || (num%5 == 0))
		next
	end
	sum += num
end

puts sum
