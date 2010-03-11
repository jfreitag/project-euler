#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
#we can see that the 6^(th) prime is 13.

#What is the 10001^(st) prime number?

previous_primes = [2]

max = 10001
current_number = 3

while previous_primes.length < max
	divisors = previous_primes.select {|p| current_number % p == 0}	
	previous_primes << current_number unless divisors.length > 0
	current_number += 2
end

puts previous_primes[max - 1]



