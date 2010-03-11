#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.

max = 2000000
primes = (2...max)

index = 0
divisor = 2

while divisor < Math.sqrt(max)
	primes = primes.select{|p| p % divisor != 0 || p == divisor}
	index += 1
	divisor = primes[index]
end

sum = primes.inject(0) { |s, p| s += p}
puts "#{sum}"
