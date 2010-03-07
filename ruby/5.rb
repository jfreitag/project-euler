#2520 is the smallest number that can be divided by each of the numbers
#from 1 to 10 without any remainder.

#What is the smallest number that is evenly divisible by all of the numbers
# from 1 to 20?

multiplier = 2
previous_multipliers = []

product = 1

while (multiplier <= 20)
	local_multiplier = multiplier
	previous_multipliers.each do |m| 
		if(local_multiplier % m == 0)
			local_multiplier = local_multiplier / m
		end
	end
	product = product * local_multiplier
	previous_multipliers << local_multiplier
	multiplier += 1
end

puts product


