# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# Remove multiples of 2,3,5,7...

limit = 10

array = (2..limit).to_a

# arr_len = array.length
# (0...arr_len).each do |i|
# 	(array[i]...arr_len).each do |j|
# 		puts "#{j} , #{array[j]} , #{array.length}"
# 		array.delete_at(j)
# 		arr_len = array.length
# 		puts array
# 	end
# 	break
# end

arr_len = array.length
i = 0
j = 0
while i < array.length
	j = i*2+1
	while j < array.length
		j += i+1
		puts "#{j} , #{array[j]} , #{array.length}"
		
		array.delete_at(j)
		puts array
	end
	i += 1
end


# puts array

# puts array[0]

# array.each do |element|
# 	array.reject! {|item| (item%element == 0)}
# end

# puts array.reduce(&:+)