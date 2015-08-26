class Recursion 
	def flatten(array, result =[])
		array.each do |a|
			if a.class == Array
				flatten(a, result)
			else 
				result << a
			end 
		end
		result
	end 
end 