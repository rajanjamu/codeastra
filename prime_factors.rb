def factors(number)
	array = []
	num = 2
	while num <= number
		if (number%num == 0)
			number /= num
			array<<num
		else
			num += 1
		end
	end
	return array
end