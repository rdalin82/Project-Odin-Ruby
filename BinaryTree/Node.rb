class Node
	attr_accessor :left, :right, :parent, :value
	def initialize(args={})
		@value = args[:value]
		@left = args[:left]
		@right = args[:right]
		@parent = args[:parent]
	end 
end 

class BinarySearchTree
	attr_accessor :root
	def initialize(root)
		@root = root
	end 

	def build_tree(array)
		array.each do |value|
			self.add(value)
		end
		self  
	end 

	def add(value, node=@root)
		if value > node.value
			if node.right 
				self.add(value, node.right)
			else 
				node.right = Node.new({:parent => node, :value=> value})
			end 
		elsif value < node.value
			if node.left 
				self.add(value, node.left)
			else 
				node.left = Node.new({:parent=> node, :value=>value})
			end 
		else 
			node 
		end 
	end 

	def find_max
		node = @root
		while !node.nil?
			value = node.value 
			node = node.right 
		end 
		value 
	end 

	def find_min
		node = @root
		while !node.nil? 
			value = node.value
			node = node.left
		end
		value 
	end 

	def find_key(key, node=@root)
		return false if node.nil?
		return node.value if key == node.value 
		if key > node.value 
			find_key(key, node.right)
		elsif key < node.value 
			find_key(key, node.left)
		else 
			false
		end 
	end 

	def convert_array
		array = []
		start = find_min
		stop = find_max 
		(start..stop).each do |i|
			if find_key(i) != false 
				array << find_key(i)
			end
		end 
		array
	end 
end
