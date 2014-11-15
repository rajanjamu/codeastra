def prime_number(number)
	nth = 2
	while number > 1
		nth += 1
		count = 0
		(2...nth).each do |i|
			if !(nth%i == 0)
				count += 1
			end
		end
		if (count == (nth-2))
			number -= 1
		end
	end
	return nth
end