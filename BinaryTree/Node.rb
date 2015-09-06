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
				n2 = node.right 
				self.add(value, n2)
			else 
				node.right = Node.new({:parent => node, :value=> value})
			end 
		elsif value < node.value
			if node.left 
				n3 = node.left 
				self.add(value, n3)
			else 
				node.left = Node.new({:parent=> node, :value=>value})
			end 
		else 
			node 
		end 
	end 

end
