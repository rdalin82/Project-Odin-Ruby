require 'minitest/autorun'
require './fibonacci'

describe Recursion do 
	let(:recursion) { Recursion.new }

	it "should return 5 for 5 " do 
		assert_equal 5, recursion.fibonacci(5)
	end 

	it "should return 0 for 0" do 
		assert_equal 0, recursion.fibonacci(0)
	end 

	it "should return 1 for 1 " do 
		assert_equal 1, recursion.fibonacci(1)
	end


	it "should return 8 for 6" do 
		assert_equal 8, recursion.fibonacci(6)
	end 

	it "should return 55 for 10" do 
		assert_equal 55, recursion.fibonacci(10)
	end 

end 