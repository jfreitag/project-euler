#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number y ?

number = 600851475143

factors = []
divisor = 2

while (divisor <= Math.sqrt(number))
	if(number % divisor == 0)
		factors << divisor
		number = number / divisor
		puts number
	else
		divisor += 1
	end
end

factors << number

puts factors.inspect

