//The sum of the squares of the first ten natural numbers is,
//1^(2) + 2^(2) + ... + 10^(2) = 385

//The square of the sum of the first ten natural numbers is,
//1 + 2 + ... + 10)^(2) = 55^(2) = 3025

//Hence the difference between the sum of the squares of the 
//first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

//Find the difference between the sum of the squares of the first
//one hundred natural numbers and the square of the sum.

var sum_of_squares = 0
var sum = 0

  for( i<- 1 until 101){
     sum_of_squares += Math.pow(i,2).toInt
     sum += i
   }
var square_of_sum = Math.pow(sum, 2).toInt

println( square_of_sum + " - " + sum_of_squares + " = " + (square_of_sum - sum_of_squares))
