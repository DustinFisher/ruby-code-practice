# http://projecteuler.net/problem=4
# A palindromic number reads the same both ways. The largest palindrome 
# made from the product of two 2-digit numbers is 9009 = 91 99. Find the 
# largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome(digits)
	numbers = []
	x = ("9"*digits).to_i
	y = ("9"*digits).to_i
	limit = (("9"*(digits-1)).to_i)
	while x > limit
		y.downto(limit+1) do |i|
			x*i == (x*i).to_s.reverse.to_i ? numbers << x*i : ""
		end
		x -= 1
	end
	return numbers.sort.last
end

puts largest_palindrome(3)