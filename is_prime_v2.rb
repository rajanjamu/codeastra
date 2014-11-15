def is_prime(number)
	if (number == 1)
		return false
	else
		flag = true
		(2...number).each do |i|
			if (number%i == 0)
				flag = false
				break
			end
		end
	end
	return flag
end