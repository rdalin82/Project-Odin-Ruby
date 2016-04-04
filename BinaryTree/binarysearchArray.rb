require 'benchmark'

def binary_search(array, target)
	return false if array.nil?
  value = array[halfway(array)]
	return value if target ==value 
	if target > value
		binary_search(array[halfway(array)..array.length-1], target)
	elsif target < value 
		binary_search(array[0...halfway(array)], target)
	else 
		false
	end 
end 

def halfway(array)
  array.length/2
end

y = 1000000
ar = (0..y).to_a
puts "#{y} times" 
Benchmark.bm do |x|
  x.report { ar.each { |x| binary_search(ar, x) } }
end

