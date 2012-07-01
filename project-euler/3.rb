#http://projecteuler.net/problem=3
#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143?

def largest_prime_factor(current_number)
	prime_factors = []
	i = 2
	while current_number > 1
		while current_number % i == 0
			prime_factors << i
			current_number /= i
		end
		i += 1
	end
	return prime_factors.last
end

puts largest_prime_factor(600851475143)