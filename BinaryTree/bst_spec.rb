require 'minitest/autorun'
require './Node'

describe BinarySearchTree do 
	let(:bst) { BinarySearchTree.new(Node.new({:value => 5})) }
	let(:bst2) { BinarySearchTree.new(Node.new({:value => 50})) }
	let(:array) do 
		x = []
		10.times do 
			x << rand(0..10)
		end 
		x
	end 
	let (:array1) do 
		x = []
		100.times do 
			x << rand(0..300)
		end 
		x
	end
	let(:array2) { [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].shuffle! }
	let(:array3) { [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] }
	let(:array4) do 
		arr = []
		(0..100000).each do |i|
			arr << i
		end 
		arr
	end 
	let(:arrayshuffle) do 
		arr = []
		(0..100000).each do |i|
			arr << i
		end 
		arr.shuffle!
	end 

	it "should assert operator" do 
		assert_operator 5, :>, 4
	end  

	it "should have tree in right order" do 
		bst.build_tree(array3)
		assert_operator bst.root.value, :<, bst.root.right.value 
		assert_operator bst.root.value, :>, bst.root.left.value
	end 
	it "should do the same as above with random array" do 
		bst.build_tree(array)
		assert_operator bst.root.value, :<, bst.root.right.value 
		assert_operator bst.root.value, :>, bst.root.left.value
	end

	it "should find min" do 
		bst.build_tree(array3)
		node = bst.root
		while !node.nil? 
			value = node.value
			node = node.left
		end 
		assert_equal 1, value 
	end 

	it "should find max" do 
		bst.build_tree(array3)
		node = bst.root
		while !node.nil? 
			value = node.value 
			node = node.right 
		end 
		assert_equal 10, value
	end 

	it "should work with find min" do 
		bst.build_tree(array3)
		assert_equal 1, bst.find_min()
	end 
	
	it "should work with find max" do 
		bst.build_tree(array3)
		assert_equal 10, bst.find_max()
	end 

	it "should work with find min" do 
		bst.build_tree(array2)
		assert_equal 1, bst.find_min()
	end 
	
	it "should work with find max" do 
		bst.build_tree(array2)
		assert_equal 10, bst.find_max()
	end 

	it "should find key value" do 
		bst.build_tree(array2)
		assert_equal 2, bst.find_key(2)
		assert_equal 9, bst.find_key(9)
		assert_equal 7, bst.find_key(7)
		assert_equal 5, bst.find_key(5)
		assert_equal 4, bst.find_key(4)
		assert_equal 1, bst.find_key(1)
		assert_equal 3, bst.find_key(3)
		assert_equal false, bst.find_key(11)
	end 

	it "should return a sorted array" do 
		bst.build_tree(array2)
		assert_equal array3, bst.convert_array
	end 
	it "should work with large unsorted arrays" do 
		bst.build_tree(arrayshuffle)
		assert_equal array4, bst.convert_array
	end 
end
