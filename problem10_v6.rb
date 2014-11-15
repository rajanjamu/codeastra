require_relative "is_prime"

array = [2,3] # They are not of the form (6n +- 1)

(1..200).each do |i|
	if (i%6 == 1 || i%6 == 5)
		array << i if is_prime(i)
	end
end

puts array