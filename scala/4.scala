//A palindromic number reads the same both ways. The largest palindrome
//made from the product of two 2-digit numbers is 9009 = 91 × 99.

//Find the largest palindrome made from the product of two 3-digit numbers.

def get_palindrome(d:Int, e:Int, f:Int) = 
	100000*d + 10000*e + 1000*f + 100*f + 10*e + d

var d = 9
var found  = false
while (d >= 1 && !found)
{
	var e = 9
	while (e >= 0 && !found) 
	{
		var f = 9
		while (f >= 0 && !found)
		{
			var a = 100
			while (a <= 999 && !found)
			{
				var palindrome = get_palindrome(d, e, f)
				//println("checking " + palindrome + " and " + a)
				if(palindrome % a == 0)
				{
					var b = palindrome / a
					if(b.toString().length == 3){
						println(palindrome + " " + a + " " + b)
						found = true
					}
				}
				a += 1
			}
			f -= 1
		}
		e -= 1
	}
	d -= 1
}






