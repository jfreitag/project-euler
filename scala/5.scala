//2520 is the smallest number that can be divided by each of the numbers
//from 1 to 10 without any remainder.

//What is the smallest number that is evenly divisible by all of the numbers
// from 1 to 20?

var multiplier = 2
var previous_multipliers =  List[Int]()

var product = 1

var max = 20

while (multiplier <= max) {
	var local_multiplier = multiplier
	for(m <- previous_multipliers) {
		if(local_multiplier % m == 0) {
			local_multiplier = local_multiplier / m
		}
	}
	product = product * local_multiplier
	previous_multipliers = local_multiplier :: previous_multipliers
	multiplier += 1
}

println(product)


