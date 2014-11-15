=begin
	* nth of Fibonacci
=end

puts "----------------------------"
n = 10

def rec(n)
	if (n > 2)
		rec(n-1) + rec(n-2)
	else
		1
	end
end

puts "The #{n}th number is Fibonacci Series is #{rec(n)}"
puts "----------------------------"