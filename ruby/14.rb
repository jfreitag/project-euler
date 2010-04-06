#The following iterative sequence is defined for the set of positive integers:

#n -> n/2 (n is even)
#n -> 3n + 1 (n is odd)

#Using the rule above and starting with 13, we generate the following sequence:
#13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1

#It can be seen that this sequence (starting at 13 and finishing at 1)
# contains 10 terms. Although it has not been proved yet (Collatz Problem),
# it is thought that all starting numbers finish at 1.

#Which starting number, under one million, produces the longest chain?

#NOTE: Once the chain starts the terms are allowed to go above one million.

class PathLengthFinder
	def initialize
		@path_lengths = {}
		@path_lengths[1] = 1
	end

	def find_length(start)
		return @path_lengths[start] if @path_lengths.include?(start)
		if(start%2 == 0)
		        @path_lengths[start] = find_length(start/2) + 1
		else
			@path_lengths[start] = find_length(3*start + 1) + 1
		end
		@path_lengths[start]		
	end
end

max = 1

finder = PathLengthFinder.new

puts finder.find_length(13)

lengths = (1..1000000).to_a.map { |i| finder.find_length(i)}
puts lengths.max
puts lengths.index(lengths.max) + 1
