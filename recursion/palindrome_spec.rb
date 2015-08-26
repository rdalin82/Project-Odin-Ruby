require 'minitest/autorun'
require './palindrome'

describe Recursion do 
	let(:recursion) { Recursion.new }

	it "should reject non palindrome" do 
		assert_equal false, recursion.palindrome("word")
	end 

	it "should accept palindrome" do 
		assert_equal true, recursion.palindrome("abba")
	end 

	it "should reject non palindrome 2" do 
		assert_equal false, recursion.palindrome("abceba")
	end 

	it "should work with odd number words" do 
		assert_equal true, recursion.palindrome("abcba") 
	end 
end 