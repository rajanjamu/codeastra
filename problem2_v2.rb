n = 4000000
sum = 0

a = 1
b = 1
temp = 0

while a <= n
	sum += b if(b%2 == 0)
	temp = b
	b += a
	a = temp	
end

puts sum
