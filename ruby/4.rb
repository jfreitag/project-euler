#A palindromic number reads the same both ways. The largest palindrome
#made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

def get_palindrome(d, e, f)
	100000*d + 10000*e + 1000*f + 100*f + 10*e + d
end

9.downto(1) do |d|
	9.downto(0) do |e|
		9.downto(0) do |f|
			100.upto(999) do |a|
				palindrome = get_palindrome(d, e, f)
				if(palindrome % a == 0)
					b = palindrome / a
					if(b.to_s.length == 3)
						puts "#{palindrome}, #{a}, #{b}"
						return palindrome
					end
				end
			end
		end
	end
end




