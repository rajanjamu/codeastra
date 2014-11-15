require_relative "is_prime_v4"

print "Enter number: "
input = gets.chomp.to_i
print "Answer is #{is_prime(input)}\n"
