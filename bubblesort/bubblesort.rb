class Bubble
	def bubble_sort(array)
		i = 0
		swap = true 
		length = array.length-1 
		while swap 
			swap = false 
			i = 0
			while i < length 
				if array[i] > array[i+1]
					temp = array[i]
					array[i] = array[i+1]
					array[i+1] = temp
					swap = true
					 
				end 
				i+=1 
			end 
		end 
		array 

	end 

end 
