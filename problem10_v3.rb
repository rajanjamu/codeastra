# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# Remove multiples of 2,3,5,7...

limit = 20000

array = (2..limit).to_a
array.each do |element|
	array.reject! {|item| (item%element == 0)}
end

puts array.reduce(&:+)