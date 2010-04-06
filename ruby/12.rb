
class Factor
	attr_accessor :divisor, :number_of_times
	def initialize(divisor, number_of_times)
		@divisor = divisor
		@number_of_times = number_of_times
	end
	
end

class Factors

	def initialize
		@factors = []
	end

	def add_factor(factor)
		match = @factors.select { |f| f.divisor == factor}.first
		if(match)
			match.number_of_times +=1
		else
			@factors << Factor.new(factor, 1)
		end
	end

	def copy
		copy = Factors.new
		@factors.each do |f| 
			f.number_of_times.times { copy.add_factor(f.divisor)}
		end
		return copy
	end

	def count
		@factors.inject(1) { |product, factor| product*(factor.number_of_times+1)} 
	end
end

class FactorFinder
	def initialize
		@factors = {}
		@factors[1] = Factors.new
	end
def get_number_of_factors(number)
	divisor = 2
	if(@factors.include?(number))
	   return @factors[number].copy
	end
	while(divisor <= number)
		#puts "number = #{number}"
		#puts "divisor = #{divisor}"
		if(number%divisor == 0)
			factors = get_number_of_factors(number/divisor)
			factors.add_factor(divisor)
			@factors[number] = factors
		#	puts "returning #{factors.inspect}"
			return factors.copy
		else
			divisor = divisor + 1
		end
	end	
	factors = Factors.new
	factors.add_factor(number)
	@factors[number] = factors
#	puts "returning #{factors.inspect}"
	return factors.copy
end
end



start = 1
triangle = start

finder = FactorFinder.new

max = 500
while (finder.get_number_of_factors(triangle).count < max)
#	puts triangle
	start = start + 1
	triangle = triangle + start
end

puts triangle

