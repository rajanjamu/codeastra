def prime(number)
	array = []
	(2...number).each do |i|
		count = 0
		(2...i).each do |j|
			if !(i%j == 0)
				count += 1
			end
		end
		if (count == (i-2))
			array << i
		end
	end
	return array
end