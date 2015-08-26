class Recursion
	def bottles(n)
		return puts "no more bottles of beer" if n == 0
		if n ==1 
			puts "#{n} bottle of beer on the wall, #{n} bottle of beer, you take one down, pass it around, #{n-1} bottles of beer" 
		else 
			puts "#{n} bottles of beer on the wall, #{n} bottles of beer, you take one down, pass it around, #{n-1} bottles of beer" 
			puts "" 
		end
		bottles(n-1)
	end
end 
Recursion.new.bottles(99)