#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#a^(2) + b^(2) = c^(2)

#For example, 3^(2) + 4^(2) = 9 + 16 = 25 = 5^(2).

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

a = 3
b = 4

found = false

while ( a < 1000 && !found)
	b = 4
	while (b < 1000 && !found)
		c = Math.sqrt(a**2 + b**2)
		if(a + b + c == 1000)
			found = true
			puts "#{a} * #{b} * #{c} = #{a*b*c}"
		end
		b +=1
	end
	a += 1
end

