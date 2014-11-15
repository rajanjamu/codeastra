n = 4000000
sum = 0

a = 1
b = 1
temp = 0

while b <= n
	if(b%2 == 0)
		sum += b
	end

	temp = b
	b += a
	a = temp	
end

puts sum
