# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# Remove multiples of 2,3,5,7...

limit = 200000
list = (2..limit).to_a
boolean = Array.new
(0...list.length).each do |item|
	boolean << 1
end

(0...list.length-1).each do |i|
	if (boolean[i] == 1)
		prime = list[i]
		(i+1...list.length).each do |j|
			# puts "#{i} #{j}"
			if (list[j]%prime == 0)
				boolean[j] = 0
			end
		end
	end
end

# Print out prime numbers
(0...list.length).each do |i|
	if (boolean[i] == 1)
		puts list[i]
	end
end