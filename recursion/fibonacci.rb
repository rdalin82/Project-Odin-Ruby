class Recursion 
	def fibonacci(n)
		return n if n < 2
		#return n if n == 0
		#return n if n == 1
		fibonacci(n-1) + fibonacci(n-2)
	end 
end 
