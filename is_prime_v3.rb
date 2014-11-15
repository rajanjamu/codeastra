def is_prime(number)
	if (number == 1)
		return false
	else
		flag = true
		square_root = (number**(1.0/2)).truncate
		(2..square_root).each do |i|
			if (number%i == 0)
				flag = false
				break
			end
		end
	end
	return flag
end