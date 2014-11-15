def is_prime(number)
	return false if (number == 1)
	(2..Math.sqrt(number)).each do |i|
		return false if (number%i == 0)
	end
	return true
end