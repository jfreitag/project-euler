//A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
//a^(2) + b^(2) = c^(2)

//For example, 3^(2) + 4^(2) = 9 + 16 = 25 = 5^(2).

//There exists exactly one Pythagorean triplet for which a + b + c = 1000.
//Find the product abc.

var a = 3
var b = 4

var found = false

while ( a < 1000 && !found) {
	b = 4
	while (b < 1000 && !found) {
		var c = Math.sqrt(Math.pow(a,2) + Math.pow(b,2))
		if(a + b + c == 1000) {
			found = true
			println(a + " * " + b + " * " + c + " = " + (a*b*c))
          }
		b +=1
    }
	a += 1
  }

