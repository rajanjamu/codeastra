def uniq_factors(number)
	factors_array = factors(number)
	uniq_factors_array = []
	factors_array.each do |factor|
		if !(uniq_factors_array.include?factor)
			uniq_factors_array<<factor
		end
	end
	return uniq_factors_array
end