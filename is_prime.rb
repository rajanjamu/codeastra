def is_prime(number)
	count = 0
	(2...number).each do |i|
		if !(number%i == 0)
			count += 1
		end
	end
	if (count == (number-2))
		return true
	else
		return false
	end
end