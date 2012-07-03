# http://projecteuler.net/problem=5
# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the 
# numbers from 1 to 20?

# My code produces the correct answer, but it is very, very slow.
# Researched a couples answers to this in Ruby and learned about the 
# inject method in the enumerable class and the least common multiple 
# method in the interger class. I could not believe this could be done 
# in a single line of code. Good stuff.

# MY CODE
#def divisible_number(start_num, end_num)
#	found = false
#	start = end_num+1
#	count = 0
#	while !found
#		if start % 2 == 0
#			end_num.downto(start_num) do |i|
#				start % i == 0 ? count += 1 : break
#			end
#			count == (end_num-start_num+1) ? (return start) : (start += 1)
#			count = 0
#		end
#		start += 1
#	end
#end

#puts divisible_number(1, 20)


# refactored code after more research
puts (1..20).inject(1) { |result, n| result.lcm n }