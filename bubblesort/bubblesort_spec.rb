require 'minitest/autorun'
require './bubblesort.rb'

describe Bubble do 
	let(:bubble) { Bubble.new } 
	let (:array1) do 
		x= []
		7000.times do 
			x << rand(0..9)
		end 
		x
	end 
	it "should sort array" do 
		assert_equal [1, 2, 3, 4], bubble.bubble_sort([3, 4, 2, 1])
	end

	it "should sort longer array" do 
		assert_equal [1, 2, 3, 4, 5], bubble.bubble_sort([3, 4, 5, 1, 2])
	end 

	it "should sort an even longer array" do 
		assert_equal [1 ,2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], bubble.bubble_sort([16, 1, 11, 2, 5, 12, 4, 3, 15, 7, 8, 10, 13, 6, 14, 9])
	end 

	it "should sort really long array" do 
		assert_equal array1.sort, bubble.bubble_sort(array1)
	end 
end 
