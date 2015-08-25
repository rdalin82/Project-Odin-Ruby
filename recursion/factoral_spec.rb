require 'minitest/autorun'
require './factoral' 

describe Recursion do 
	let(:recursion) {Recursion.new } 
	it "should return correct number for 5" do 
		assert_equal 120, recursion.factoral(5)
	end 
  it "should return 1 if 1" do 
    assert_equal 1, recursion.factoral(1)
  end 

  it "should return 2 if 2" do 
  	assert_equal 2, recursion.factoral(2)
  end 
end 
