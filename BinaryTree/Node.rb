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
	def initialize(root=Node.new)
		@root = root
	end 

	def build_tree(array)
		array.shuffle!
		if @root.value == nil
                  @root.value = array[0]
                end 
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
	
	#breadth first search
	def bfs(value)
		queue = [@root]
		until queue.empty? 
			current = queue.shift
			return current if current.value == value 
			queue.push(current.left) unless current.left.nil?
			queue.push(current.right) unless current.right.nil? 
		end 
		nil
	end 

	#depth first search 
	def dfs(value)
		stack = [@root]
		until stack.empty?
			current = stack.pop
			return current if current.value == value
			stack.push(current.right) unless current.right.nil?
			stack.push(current.left) unless current.left.nil? 
		end 
		nil 
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

	def find_node(key, node=@root)
		return false if node.nil?
		return node if key == node.value 
		if key > node.value 
			find_key(key, node.right)
		elsif key < node.value 
			find_key(key, node.left)
		else 
			false
		end 
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
