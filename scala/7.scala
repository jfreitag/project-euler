//By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
//we can see that the 6^(th) prime is 13.

//What is the 10001^(st) prime number?

var previous_primes = List[Int](2, 3)

var max = 10001
var current_number = 3


while( previous_primes.length < max) {
	current_number += 2
	var divisors_exist = previous_primes.exists ((p) => current_number % p == 0)	
    if(!divisors_exist){
	    previous_primes = current_number :: previous_primes
        //println(current_number)
    }
}
println(current_number)




