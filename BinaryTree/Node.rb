class Node
	attr_reader :left, :right 
	attr_accessor :value
	def initialize(args={})
		@value = args[:value]
		@left = args[:left]
		@right = args[:right]
	end 

	def add(node)

		if node.value > @value 
			if @right
		  	self.right.add(node) 
			else 
				@right = node 
			end 
		elsif node.value < @value 
			if @left 
				self.left.add(node)
			else 
			@left = node 
		end 
		else 
		end 
	end 
end 