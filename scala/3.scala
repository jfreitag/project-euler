//The prime factors of 13195 are 5, 7, 13 and 29.

//What is the largest prime factor of the number y ?

var number = 600851475143L

var divisor = 2

while (divisor <= Math.sqrt(number)) {
	if(number % divisor == 0) {
		number = number / divisor
	}
	else {
		divisor += 1
	}
}

println(number)

