require 'minitest/autorun'
require './flatten'

describe Recursion do 
	let(:recursion) { Recursion.new }

	it "should flatten an array" do 
		assert_equal [1, 8, 9, 3, 4], recursion.flatten([[1, [8, 9], [3, 4]]])
	end 
end 